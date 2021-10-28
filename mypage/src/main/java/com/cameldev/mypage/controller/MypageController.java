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
public class MypageController {

	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);

	private final UserService userService; 
	
	@Inject
	public MypageController(UserService userService) {
		this.userService =userService;
	}
	


	
	//마이페이지
	@RequestMapping(value = "/my", method = RequestMethod.GET)
	public void myPage(UserVO userVO, HttpSession session, Model model) throws Exception{
		
		String id = (String) session.getAttribute("id");
		logger.info("C: 회원정보수정 GET의 아이디 "+id);
		
		//서비스안의 회원정보보기 메서드 호출
		UserVO vo = userService.readMember(id);

		//정보저장 후 페이지 이동
		model.addAttribute("userVO", vo);
		
		
	}
	
	


}
