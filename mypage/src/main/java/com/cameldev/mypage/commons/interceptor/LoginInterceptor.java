package com.cameldev.mypage.commons.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.cameldev.mypage.domain.UserVO;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	private static final String LOGIN = "login"; 
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HttpSession httpSession = request.getSession(); 
		ModelMap modelMap = modelAndView.getModelMap(); 

		UserVO userVO = (UserVO) modelMap.get("user"); 
		
		
		if (userVO != null) { 
			httpSession.setAttribute("id", userVO.getID());
	    	httpSession.setAttribute("mno", userVO.getMemberno());
		
			logger.info("new login success"); 
			httpSession.setAttribute(LOGIN, userVO); 
			response.sendRedirect("/mypage/"); 
		}

		
	}
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession httpSession = request.getSession(); 
		// 기존의 로그인 정보 제거 
		if (httpSession.getAttribute(LOGIN) != null) {
			logger.info("clear login data before"); 
			httpSession.removeAttribute(LOGIN); 
		} 
		return true;
	
	}
	

	
}
