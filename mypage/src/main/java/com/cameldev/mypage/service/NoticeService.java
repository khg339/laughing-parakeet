package com.cameldev.mypage.service;

import java.util.List;

import com.cameldev.mypage.domain.CommentVO;
import com.cameldev.mypage.domain.NoticeDTO;

public interface NoticeService {
	public List list() throws Exception;
	public List list2() throws Exception;
	public List list3() throws Exception;
	public abstract NoticeDTO read(String noticeno);
	public abstract NoticeDTO read2(String noticeno);
	public abstract NoticeDTO read3(String noticeno);
	/* public List comlist(String noticeno) throws Exception; */
	
}
