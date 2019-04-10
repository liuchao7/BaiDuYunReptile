package com.reptile.entity;

/**
 * 百度云用户信息实体
 * @author user
 *
 */
public class UserInfo {

	private String userUk; // 用户ID
	private String userName; // 用户名
	private String imageUrl; // 头像地址
	private Integer shareNum=0; // 分享资源个数
	private String note; // 用户说明
	
	public String getUserUk() {
		return userUk;
	}
	public void setUserUk(String userUk) {
		this.userUk = userUk;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public Integer getShareNum() {
		return shareNum;
	}
	public void setShareNum(Integer shareNum) {
		this.shareNum = shareNum;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "UserInfo [userUk=" + userUk + ", userName=" + userName + ", imageUrl=" + imageUrl + ", shareNum="
				+ shareNum + ", note=" + note + "]";
	}
	
	
}
