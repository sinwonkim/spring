package com.spring.board4.domain;

public class BoardVO {
	private int id;
	private String writer;
	private String title;
	private String content;
	private String password;
	private String reg_Date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getReg_Date() {
		return reg_Date;
	}
	public void setReg_Date(String reg_Date) {
		this.reg_Date = reg_Date;
	}
	
	@Override
	public String toString() {
		return "BoardVO [id=" + id + ", writer=" + writer + ", title=" + title + ", content=" + content + ", password="
				+ password + ", reg_Date=" + reg_Date + "]";
	}
	
	
}
