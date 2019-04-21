package com.myspring.ex.domain;

public class BoardVO {
	
	private int id;
	private String writerName;
	private String title;
	private String content;
	private String password;
	private String regDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
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
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "BoardVO [id=" + id + ", writerName=" + writerName + ", title=" + title + ", content=" + content
				+ ", password=" + password + ", regDate=" + regDate + "]";
	}
	
	
	
	
	

}
