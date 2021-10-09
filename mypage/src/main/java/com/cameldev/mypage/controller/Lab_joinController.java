package com.cameldev.mypage.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cameldev.mypage.domain.Lab_joinVO;
import com.cameldev.mypage.service.Lab_joinService;


@Controller
@RequestMapping("/lab")
public class Lab_joinController {
	
	private final Lab_joinService lab_joinService;
	
	@Inject
	public Lab_joinController(Lab_joinService lab_joinService) {
		this.lab_joinService = lab_joinService;
	}
	
	//랩실 신청 페이지
	@RequestMapping(value = "/apply", method = RequestMethod.GET)
	public String applyGET() throws Exception {
		return "/lab/apply";
	}
	
	//랩실 신청 처리
	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	public String applyPOST(Lab_joinVO lab_joinVO, RedirectAttributes redirectAttributes) throws Exception {
		
		lab_joinService.apply(lab_joinVO);
		redirectAttributes.addFlashAttribute("msg", "APPLYED");

		return "redirect:/lab/labMain";

	}
	
	//랩실 메인 페이지(임시)
	@RequestMapping(value = "/labMain", method = RequestMethod.GET)
	public String labMain() throws Exception{
		return "/lab/labMain";
	}

}
