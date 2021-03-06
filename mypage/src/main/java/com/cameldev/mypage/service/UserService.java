package com.cameldev.mypage.service;

import com.cameldev.mypage.domain.LoginDTO;
import com.cameldev.mypage.domain.UserVO;

public interface UserService {
	
	//회원가입 처리
	void register(UserVO userVO) throws Exception;
	
	//로그인 처리
	UserVO login(LoginDTO loginDTO) throws Exception;
	
	//회원정보 보기
	public UserVO readMember(String id) throws Exception;
}
