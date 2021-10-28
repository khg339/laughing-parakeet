package com.cameldev.mypage.persistence;

import com.cameldev.mypage.domain.LoginDTO;
import com.cameldev.mypage.domain.UserVO;

public interface UserDAO {
	
	//회원가입
	void register(UserVO userVO) throws Exception;

	//로그인
	UserVO login(LoginDTO loginDTO) throws Exception;

	public UserVO readMember(String userid) throws Exception;
	
}
