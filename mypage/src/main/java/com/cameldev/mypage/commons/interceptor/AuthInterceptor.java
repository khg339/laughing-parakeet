package com.cameldev.mypage.commons.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


//servlet-context.xml�� ��� �߰�
public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	
	

	@Override 
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception { 
		HttpSession httpSession = request.getSession(); 
		if (httpSession.getAttribute("login") == null) { 
			logger.info("current user is not logged"); 
			response.sendRedirect("/mypage/user/login"); 
			return false; 
		} 
		return true;
	}
			
}
