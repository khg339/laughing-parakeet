package com.cameldev.mypage.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cameldev.mypage.domain.LabDTO2;
import com.cameldev.mypage.domain.ThesisDTO;
import com.cameldev.mypage.domain.majorDTO;
import com.cameldev.mypage.service.LabService;
import com.cameldev.mypage.service.ThesisService;
import com.cameldev.mypage.service.majorService;

@Controller
@RequestMapping(value = "/thesis")
public class ThesisController {
	@Inject
	ThesisService thesisservice;
	@RequestMapping(value = "/thesisList", method=RequestMethod.GET)
	public void getThesisList(Model model) throws Exception{
		List<ThesisDTO>list=null;
		list=thesisservice.list();
		model.addAttribute("thesislist",list);
	}

}
