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
 * 更新用户信息
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
			logger.info(userInfo+"用户信息成功修改");
		}catch(Exception e){
			logger.error("加载用户信息报错",e);
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				logger.error("关闭数据库连接报错",e);
			}
		}
	}
	
	/**
	 * 通过用户uk，解析网页获取用户所有信息
	 * @param uk
	 * @return
	 */
	public UserInfo parsePageByUserUk(String uk){
		UserInfo userInfo=new UserInfo();
		boolean flag=false; // js执行成功失败标识
		String url="https://pan.baidu.com/share/home?uk="+uk;
		WebClient webClient=new WebClient(BrowserVersion.FIREFOX_52); // 实例化web客户端
		try{
			HtmlPage page=webClient.getPage(url);
			
			//尝试三次连接
			for(int i=0;i<3;i++){
				try{
					Thread.sleep(2000);
				}catch(Exception e){
					logger.error("休眠报错",e);
				}
				HtmlParagraph pInfo=(HtmlParagraph)page.getByXPath("//p[@class='personal-info']").get(0);
				if(!"".equals(pInfo.asText())){
					flag=true;
					break;
				}
			}
			if(flag){ // 解析网页获取数据， 通过xpath方式
				HtmlParagraph pInfo=(HtmlParagraph)page.getByXPath("//p[@class='personal-info']").get(0);
				HtmlSpan uInfo=(HtmlSpan)page.getByXPath("//span[@class='homepagelink']").get(0);
				HtmlImage imageInfo=(HtmlImage)page.getByXPath("//img[@class='pic-frm-pic']").get(0);
				HtmlEmphasis cInfo=(HtmlEmphasis)page.getByXPath("//em[@class='publiccnt']").get(0);
				userInfo.setUserUk(uk);
				userInfo.setNote(pInfo.asText());
				userInfo.setUserName(uInfo.asText());
				userInfo.setImageUrl(imageInfo.getAttribute("src"));
				userInfo.setShareNum(Integer.parseInt(cInfo.asText()));
				logger.info("成功解析用户uk:"+uk+"的用户信息："+userInfo);
			}
		}catch(Exception e){
			logger.error("解析网页报错",e);
		}finally{
			webClient.close(); // 关闭客户端，释放内存
		}
		return userInfo;
	}
	
	/**
	 * 加载部分用户信息的Uk
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
				logger.info("加载到用户uk:"+uk);
			}
		}catch(Exception e){
			logger.error("加载用户信息报错",e);
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				logger.error("关闭数据库连接报错",e);
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
			logger.error("执行main方法报错",e);
		}
	}
	
	
	
}
