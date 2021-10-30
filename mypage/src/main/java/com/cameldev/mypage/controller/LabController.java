package com.cameldev.mypage.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cameldev.mypage.domain.LabDTO2;
import com.cameldev.mypage.domain.Lab_joinVO;
import com.cameldev.mypage.domain.LoginDTO;
import com.cameldev.mypage.domain.UserVO;
import com.cameldev.mypage.domain.majorDTO;
import com.cameldev.mypage.service.LabService;
import com.cameldev.mypage.service.majorService;

@Controller
@RequestMapping(value = "/lab")
public class LabController {
	@Inject
	LabService labservice;
	@RequestMapping(value = "/labList", method=RequestMethod.GET)
	public void getLabList(Model model) throws Exception{
		List<LabDTO2>list=null;
		list=labservice.list();
		model.addAttribute("lablist",list);
	}
	
	
}
