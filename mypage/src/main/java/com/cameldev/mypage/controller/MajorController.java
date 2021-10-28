package com.cameldev.mypage.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cameldev.mypage.domain.majorDTO;
import com.cameldev.mypage.service.majorService;

@Controller
@RequestMapping(value = "/major")
public class MajorController {
	@Inject
	majorService majorservice;
	@RequestMapping(value = "/majorList", method=RequestMethod.GET)
	public void getMajorList(Model model) throws Exception{
		List<majorDTO>list=null;
		list=majorservice.list();
		model.addAttribute("majorlist",list);
	}

}
