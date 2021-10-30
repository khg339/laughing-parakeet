package com.cameldev.mypage.domain;

import java.sql.Date;

public class CommentVO {
	
	private String commentno;
	private String noticeno;
	private String content;
	private int memberno;
	private Date datetime;
	
	public String getCommentno() {
		return commentno;
	}
	public void setCommentno(String commentno) {
		this.commentno = commentno;
	}
	public String getNoticeno() {
		return noticeno;
	}
	public void setNoticeno(String noticeno) {
		this.noticeno = noticeno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	
	@Override
	public String toString() {
		return "CommentVO [commentno=" + commentno
				           + ", noticeno=" + noticeno
				           + ", content=" + content 
				           + ", memberno=" + memberno 
				           + ", datetime=" + datetime + "]";
	}
	
}