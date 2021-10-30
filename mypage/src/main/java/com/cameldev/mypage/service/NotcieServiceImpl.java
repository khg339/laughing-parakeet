package com.cameldev.mypage.service;

import java.util.List;

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
	public List<NoticeDTO>list2()  throws Exception{
		return noticeDAO.list2();
	}
	@Override
	public List<NoticeDTO>list3()  throws Exception{
		return noticeDAO.list3();
	}
	@Override
	public NoticeDTO read(String noticeno) {
		return noticeDAO.select(noticeno);
	}
	@Override
	public NoticeDTO read3(String noticeno) {
		return noticeDAO.select(noticeno);
	}

}