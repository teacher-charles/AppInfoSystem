package com.news.pojo;

import java.util.Date;
import java.util.List;

public class Informations {

	private Long id;
	private String title;
	private String content;
	private int replyCount;
	private int viewCount;
	private Date reportTime;
	private Date lastMdfTime;
	
	private List<Replies> replies; // 评论列表
	
	public List<Replies> getReplies() {
		return replies;
	}
	public void setReplies(List<Replies> replies) {
		this.replies = replies;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public Date getReportTime() {
		return reportTime;
	}
	public void setReportTime(Date reportTime) {
		this.reportTime = reportTime;
	}
	public Date getLastMdfTime() {
		return lastMdfTime;
	}
	public void setLastMdfTime(Date lastMdfTime) {
		this.lastMdfTime = lastMdfTime;
	}
	
	public Informations() {
		super();
	}
}
