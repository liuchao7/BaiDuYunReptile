package com.reptile.entity;

import java.util.Date;

/**
 * �ٶ�����Դʵ��
 * @author user
 *
 */
public class Resource {

	private Integer id; // ����Id
	private String name; // ��Դ����
	private Date publishDate; // ��������
	private Date shareDate; // ��������
	private String userUk; // �û�Uk
	private Integer hits; // �������
	private String downloads; // ���ش���
	private String shareUrl; // �����ַ
	
	
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
