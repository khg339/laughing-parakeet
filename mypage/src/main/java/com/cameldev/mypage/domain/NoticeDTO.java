package com.cameldev.mypage.domain;
import java.sql.Date;

public class NoticeDTO {
	private String noticeno;
	private String title;
	private String name;
	private String content;
	private Date datetime;
	private String n_type;
	
	public String getNoticeno() {
		return noticeno;
	}
	public void setNoticeno(String noticeno) {
		this.noticeno = noticeno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public String getN_type() {
		return n_type;
	}
	public void setN_type(String n_type) {
		this.n_type = n_type;
	}
	@Override
	public String toString() {
		return "NoticeVO [noticeno=" + noticeno + ", title=" + title + ", name=" + name + ", content=" + content
				+ ", datetime=" + datetime + ", n_type=" + n_type + "]";
	}

}
