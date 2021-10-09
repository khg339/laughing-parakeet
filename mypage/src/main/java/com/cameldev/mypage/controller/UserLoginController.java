package com.cameldev.mypage.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cameldev.mypage.domain.LoginDTO;
import com.cameldev.mypage.domain.UserVO;
import com.cameldev.mypage.service.UserService;

@Controller
@RequestMapping("/user")
public class UserLoginController {

	private final UserService userService;
	
	@Inject
	public UserLoginController(UserService userService) {
		this.userService=userService;
	}
	
	// �α��� ������ 
	@RequestMapping(value = "/login", method = RequestMethod.GET) 
	public String loginGET(@ModelAttribute("loginDTO") LoginDTO loginDTO) { 
		return "/user/login"; 
	}

	// �α��� ó�� 
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST) 
	public void loginPOST(LoginDTO loginDTO, HttpSession httpSession, Model model) throws Exception { 
		UserVO userVO = userService.login(loginDTO); 
		if (userVO == null ) {
			System.out.println("doesn't exist id!");
			return; 
		}
		else if(!BCrypt.checkpw(loginDTO.getPW(), userVO.getPW())) {
			System.out.println("not correct password!");
			return; 
		}
		
		model.addAttribute("user", userVO); 
	}
}
