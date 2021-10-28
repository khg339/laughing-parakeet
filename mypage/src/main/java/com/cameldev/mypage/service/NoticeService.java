package com.cameldev.mypage.service;

import java.util.List;

import com.cameldev.mypage.domain.NoticeDTO;

public interface NoticeService {
	public List list() throws Exception;
	public List list2() throws Exception;
	public abstract NoticeDTO read(String noticeno);
}
