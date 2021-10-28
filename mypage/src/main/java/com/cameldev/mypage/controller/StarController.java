package com.cameldev.mypage.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cameldev.mypage.domain.LoginDTO;
import com.cameldev.mypage.domain.UserVO;
import com.cameldev.mypage.service.StarService;
import com.cameldev.mypage.service.UserService;


@Controller
@RequestMapping("/user")
public class StarController {

	private static final Logger logger = LoggerFactory.getLogger(StarController.class);

	private final StarService starService; 
	
	@Inject
	public StarController(StarService starService) {
		this.starService =starService;
	}
	

	//삭제처리
	@RequestMapping
	(value = "/remove", method = RequestMethod.POST) 
	public String remove(@RequestParam("noticeno") String[] noticeno,RedirectAttributes redirectAttributes ) throws Exception { 
		logger.info("remove ..."); 
	    
		for(String n_no : noticeno) {
			starService.delete(n_no);
		}
	    return "redirect:/user/star"; 
    }

	
	//즐겨찾기로 이동
	@RequestMapping(value = "/star", method = RequestMethod.GET)
	public void myPage(HttpSession session, Model model) throws Exception{
		
		
		int memberno=(int) session.getAttribute("mno");
		
		logger.info("C: memberno"+ memberno);
		
		 
		try{
		List starlist = starService.starlist(memberno);
		    
		model.addAttribute("stars", starlist);
		logger.info("C: starlist"+ starlist);
		
		}catch(NullPointerException e){
			System.out.println("비어있음");
		}
		
	}
	
	


}
