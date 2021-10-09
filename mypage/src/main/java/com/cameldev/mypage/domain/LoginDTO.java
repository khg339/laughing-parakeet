package com.cameldev.mypage.domain;

public class LoginDTO {
	
	private String ID;
	private String PW;
	private boolean useCookie;
	
	
	public String getID() {
		return ID;
	}
	public void setID(String ID) {
		this.ID=ID;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String PW) {
		this.PW = PW;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	
	@Override
	public String toString() {
		return "LoginDTO [userId=" + ID + ", userPw=" + PW + ", useCookie=" + useCookie + "]";
	}
	

}
