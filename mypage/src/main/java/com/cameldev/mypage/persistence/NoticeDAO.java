package com.cameldev.mypage.persistence;

import java.util.List;

import com.cameldev.mypage.domain.NoticeDTO;

public interface NoticeDAO {
	public List list() throws Exception; 
	public abstract NoticeDTO select(String noticeno);

}