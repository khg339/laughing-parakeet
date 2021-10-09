package com.cameldev.mypage.domain;

public class UserVO {
	
	private int memberno;
	private String ID;
	private String PW;
	private String name;
	private String major;
	private String email;
	private String lab;
	private String phone;
	private int age;
	private int grade;
	private String state;
	
	
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getID() {
		return ID;
	}
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String PW) {
		this.PW = PW;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLab() {
		return lab;
	}
	public void setLab(String lab) {
		this.lab = lab;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Override
	public String toString() {
		return "UserVO [memberno=" + memberno + ", ID=" + ID + ", PW=" + PW + ", name=" + name + ", major=" + major
				+ ", email=" + email + ", lab=" + lab + ", phone=" + phone + ", age=" + age + ", grade=" + grade
				+ ", state=" + state + "]";
	}
	

	
}
