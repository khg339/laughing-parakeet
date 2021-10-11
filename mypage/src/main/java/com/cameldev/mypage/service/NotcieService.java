package com.cameldev.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.NoticeDTO;
import com.cameldev.mypage.domain.NoticeForm;
import com.cameldev.mypage.persistence.NoticeDAO;

@Service
public class NotcieService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	public List<NoticeDTO> getNoticeList(NoticeForm noticeForm) throws Exception{
		return noticeDAO.getNoticeList(noticeForm);
	}

}
