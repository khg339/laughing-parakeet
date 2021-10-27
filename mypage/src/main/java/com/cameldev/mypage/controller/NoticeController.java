package com.cameldev.mypage.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cameldev.mypage.domain.NoticeDTO;
import com.cameldev.mypage.domain.NoticeForm;
import com.cameldev.mypage.service.NotcieServiceImpl;
import com.cameldev.mypage.service.NoticeService;


@Controller
@RequestMapping(value = "/notice")
public class NoticeController {
	
	@Inject
	NoticeService noticeservice;
	
	@RequestMapping(value = "/noticeList", method=RequestMethod.GET)
	public void getNoticeList(Model model) throws Exception{
		List<NoticeDTO>list=null;
		list=noticeservice.list();
		model.addAttribute("noticelist",list);
	}
	
	@RequestMapping(value="/noticeList/read/{noticeno}")
	public String read(Model model,@PathVariable String noticeno) {
		model.addAttribute("noticeDTO",noticeservice.read(noticeno));
		return "/notice/read";
	}

}