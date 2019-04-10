package com.reptile.entity;

import java.util.Date;

/**
 * 百度云资源实体
 * @author user
 *
 */
public class Resource {

	private Integer id; // 主键Id
	private String name; // 资源名称
	private Date publishDate; // 发布日期
	private Date shareDate; // 分享日期
	private String userUk; // 用户Uk
	private Integer hits; // 点击次数
	private String downloads; // 下载次数
	private String shareUrl; // 分享地址
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public Date getShareDate() {
		return shareDate;
	}
	public void setShareDate(Date shareDate) {
		this.shareDate = shareDate;
	}
	public String getUserUk() {
		return userUk;
	}
	public void setUserUk(String userUk) {
		this.userUk = userUk;
	}
	public Integer getHits() {
		return hits;
	}
	public void setHits(Integer hits) {
		this.hits = hits;
	}
	public String getDownloads() {
		return downloads;
	}
	public void setDownloads(String downloads) {
		this.downloads = downloads;
	}
	public String getShareUrl() {
		return shareUrl;
	}
	public void setShareUrl(String shareUrl) {
		this.shareUrl = shareUrl;
	}
	
	
}
