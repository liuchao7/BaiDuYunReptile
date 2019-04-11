package com.reptile.contorller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;

import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlEmphasis;
import com.gargoylesoftware.htmlunit.html.HtmlImage;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.gargoylesoftware.htmlunit.html.HtmlParagraph;
import com.gargoylesoftware.htmlunit.html.HtmlSpan;
import com.reptile.entity.UserInfo;
import com.reptile.util.DbUtil;

/**
 * �����û���Ϣ
 * @author user
 *
 */
public class UpdateUserInfo {

	private static Logger logger=Logger.getLogger(UpdateUserInfo.class);
	
	private static Connection con=null;
	
	private static DbUtil dbUtil=new DbUtil();
	
	public void updateUserInfo(UserInfo userInfo){
		try{
			con=dbUtil.getCon();
			String sql="update t_yun_user set userName=?,imageUrl=?,shareNum=?,note=? where userUk=?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, userInfo.getUserName());
			pstmt.setString(2, userInfo.getImageUrl());
			pstmt.setInt(3, userInfo.getShareNum());
			pstmt.setString(4, userInfo.getNote());
			pstmt.setString(5, userInfo.getUserUk());
			pstmt.executeUpdate();
			logger.info(userInfo+"�û���Ϣ�ɹ��޸�");
		}catch(Exception e){
			logger.error("�����û���Ϣ����",e);
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				logger.error("�ر����ݿ����ӱ���",e);
			}
		}
	}
	
	/**
	 * ͨ���û�uk��������ҳ��ȡ�û�������Ϣ
	 * @param uk
	 * @return
	 */
	public UserInfo parsePageByUserUk(String uk){
		UserInfo userInfo=new UserInfo();
		boolean flag=false; // jsִ�гɹ�ʧ�ܱ�ʶ
		String url="https://pan.baidu.com/share/home?uk="+uk;
		WebClient webClient=new WebClient(BrowserVersion.FIREFOX_52); // ʵ����web�ͻ���
		try{
			HtmlPage page=webClient.getPage(url);
			
			//������������
			for(int i=0;i<3;i++){
				try{
					Thread.sleep(2000);
				}catch(Exception e){
					logger.error("���߱���",e);
				}
				HtmlParagraph pInfo=(HtmlParagraph)page.getByXPath("//p[@class='personal-info']").get(0);
				if(!"".equals(pInfo.asText())){
					flag=true;
					break;
				}
			}
			if(flag){ // ������ҳ��ȡ���ݣ� ͨ��xpath��ʽ
				HtmlParagraph pInfo=(HtmlParagraph)page.getByXPath("//p[@class='personal-info']").get(0);
				HtmlSpan uInfo=(HtmlSpan)page.getByXPath("//span[@class='homepagelink']").get(0);
				HtmlImage imageInfo=(HtmlImage)page.getByXPath("//img[@class='pic-frm-pic']").get(0);
				HtmlEmphasis cInfo=(HtmlEmphasis)page.getByXPath("//em[@class='publiccnt']").get(0);
				userInfo.setUserUk(uk);
				userInfo.setNote(pInfo.asText());
				userInfo.setUserName(uInfo.asText());
				userInfo.setImageUrl(imageInfo.getAttribute("src"));
				userInfo.setShareNum(Integer.parseInt(cInfo.asText()));
				logger.info("�ɹ������û�uk:"+uk+"���û���Ϣ��"+userInfo);
			}
		}catch(Exception e){
			logger.error("������ҳ����",e);
		}finally{
			webClient.close(); // �رտͻ��ˣ��ͷ��ڴ�
		}
		return userInfo;
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
		UpdateUserInfo updateUserInfo=new UpdateUserInfo();
		try{
			List<String> userInfoList=updateUserInfo.loadUserInfo(0, 6);
			
			for(int i=0;i<userInfoList.size();i++){
				String uk=userInfoList.get(i);
				UserInfo userInfo=updateUserInfo.parsePageByUserUk(uk);
				updateUserInfo.updateUserInfo(userInfo);
			}
			System.out.println(userInfoList.size());
		}catch(Exception e){
			logger.error("ִ��main��������",e);
		}
	}
	
	
	
}
