package com.cameldev.mypage.service;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.NoticeDTO;
import com.cameldev.mypage.domain.NoticeForm;
import com.cameldev.mypage.persistence.NoticeDAO;

@Service
public class NotcieServiceImpl implements NoticeService {
	@Inject
	private NoticeDAO noticeDAO;
	
	@Override
	public List<NoticeDTO>list()  throws Exception{
		return noticeDAO.list();
	}
	@Override
	public NoticeDTO read(String noticeno) {
		return noticeDAO.select(noticeno);
	}

}