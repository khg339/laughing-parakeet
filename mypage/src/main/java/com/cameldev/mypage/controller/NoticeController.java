package com.cameldev.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cameldev.mypage.domain.NoticeDTO;
import com.cameldev.mypage.domain.NoticeForm;
import com.cameldev.mypage.service.NotcieService;


@Controller
@RequestMapping(value = "/notice")
public class NoticeController {
	
	@Autowired
	private NotcieService noticeService;
	
	@RequestMapping(value = "/noticeList")
	public String getNoticeList(HttpServletRequest request,HttpServletResponse response) throws Exception{
		return "notice/noticeList";
	}
	
	@RequestMapping(value = "/getNoticeList")
	@ResponseBody
	public List<NoticeDTO> getNoticeList(HttpServletRequest request,HttpServletResponse response,NoticeForm noticeForm)throws Exception{
		List<NoticeDTO> noticeList=noticeService.getNoticeList(noticeForm);
		return noticeList;
	}
	

}
