package com.cameldev.mypage.persistence;

import java.util.List;

import com.cameldev.mypage.domain.NoticeDTO;

public interface NoticeDAO {
	public List list() throws Exception; 
	public List list2() throws Exception;
	public List list3() throws Exception;
	public abstract NoticeDTO select(String noticeno);

	
	
}