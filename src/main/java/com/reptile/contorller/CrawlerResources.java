package com.reptile.contorller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;

import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.DomElement;
import com.gargoylesoftware.htmlunit.html.HtmlDefinitionList;
import com.gargoylesoftware.htmlunit.html.HtmlDivision;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.reptile.entity.Resource;
import com.reptile.util.DateUtil;
import com.reptile.util.DbUtil;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import net.sf.ehcache.Status;

/**
 * ץȡ�ٶ����û���Դ
 * @author user
 *
 */
public class CrawlerResources {

	private static Logger logger=Logger.getLogger(CrawlerResources.class);
	
	private static Connection con=null;
	
	private static DbUtil dbUtil=new DbUtil();
	
	private static CacheManager manager=null; // cache������
	
	private static Cache cache=null; // cache�������
	
	/**
	 * ��Ӱٶ����û���Դ
	 * @param cache
	 * @param resource
	 */
	public void addResource(Cache cache,Resource resource){
		try{
			con=dbUtil.getCon();
			String sql="insert into t_resources values(null,?,now(),?,0,0,?,?)";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, resource.getName());
			pstmt.setString(2, resource.getUserUk());
			pstmt.setString(3, DateUtil.formatDate(resource.getShareDate(), "yyyy-MM-dd HH:mm"));
			String shareUrl=resource.getShareUrl();
			pstmt.setString(4, shareUrl);
			if(pstmt.executeUpdate()>0){
				logger.info(resource.getUserUk()+"�û���Դ�ɹ����");
				cache.put(new Element(shareUrl, shareUrl));
				logger.info(shareUrl+"-�Ѽ��뻺��");
			}
		}catch(Exception e){
			logger.error("�����Դ����",e);
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				logger.error("�ر����ݿ����ӱ���",e);
			}
		}
	}
	
	public List<Resource> parsePageByUserUk(String uk){
		List<Resource> resourceList=new LinkedList<Resource>();
		String url="https://pan.baidu.com/share/home?uk="+uk;
		boolean flag=false; // jsִ�гɹ�ʧ�ܱ�ʶ
		WebClient webClient=new WebClient(BrowserVersion.FIREFOX_52); // ʵ����web�ͻ���
		try{
			HtmlPage page=webClient.getPage(url);
			for(int i=0;i<3;i++){
				try{
					Thread.sleep(2000);
				}catch(Exception e){
					logger.error("���߱���",e);
				}
				if(page.getByXPath("//dl[@id='infiniteListView']").size()>0){
					flag=true;
					break;
				}
			}
			if(flag){ // ������ҳ��ȡ���ݣ� ͨ��xpath��ʽ
				HtmlDefinitionList dl=(HtmlDefinitionList)page.getByXPath("//dl[@id='infiniteListView']").get(0);
				Iterable<DomElement> ddList=dl.getChildElements();
				Iterator<DomElement> iter=ddList.iterator();
				while(iter.hasNext()){
					Resource resource=new Resource();
					DomElement dom=iter.next();
					String shareUrl=dom.getAttribute("_link"); // ��ȡ�����ַ
					resource.setShareUrl(shareUrl);
					HtmlDivision fileNameDiv=(HtmlDivision)dom.getFirstChild();
					String name=fileNameDiv.getAttribute("title"); // ��ȡ��Դ����
					resource.setName(name);
					DomElement timeDom=dom.getChildElements().iterator().next().getNextElementSibling(); // ��ȡ��������
					try{
						resource.setShareDate(DateUtil.formatString(timeDom.asText(), "yyyy-MM-dd HH:mm"));						
					}catch(Exception e){
						logger.error("����ת������",e);
					}
					resourceList.add(resource);
				}
			}
		}catch(Exception e){
			logger.error("������ҳ����",e);
		}finally{
			webClient.close(); // �رտͻ��ˣ��ͷ��ڴ�
		}
		return resourceList;
	}
	
	/**
	 * �жϷ����ַ�Ƿ����
	 */
	public boolean existUrl(Cache cache,String url){
		if(cache.get(url)!=null){ // �����д���
			logger.info(url+"-�������Ѿ�����");
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * ���ز����û���Ϣ��Uk
	 * @param start
	 * @param size
	 * @return
	 */
	public List<String> loadUserInfo(Integer start,Integer size){
		List<String> userUkList=new LinkedList<String>();
		try{
			con=dbUtil.getCon();
			String sql="select * from t_yun_user limit "+start+","+size;
			PreparedStatement pstmt=con.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				String uk=rs.getString("userUk");
				userUkList.add(uk);
				logger.info("���ص��û�uk:"+uk);
			}
		}catch(Exception e){
			logger.error("�����û���Ϣ����",e);
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				logger.error("�ر����ݿ����ӱ���",e);
			}
		}
		return userUkList;
	}
	
	public static void main(String[] args) {
		CrawlerResources cr=new CrawlerResources();
		List<String> userInfoList=cr.loadUserInfo(0, 5);
		for(int i=0;i<userInfoList.size();i++){
			manager=CacheManager.create();
			cache=manager.getCache("baiduyun");
			String uk=userInfoList.get(i);
			List<Resource> reList=cr.parsePageByUserUk(uk);
			for(Resource r:reList){
				if(!cr.existUrl(cache, r.getShareUrl())){ // �����в�����
					r.setUserUk(uk);
					cr.addResource(cache, r);
				}else{
					break;
				}
			}
			if(cache.getStatus()==Status.STATUS_ALIVE){
				cache.flush();
			}
			manager.shutdown();
		}
	}
}
