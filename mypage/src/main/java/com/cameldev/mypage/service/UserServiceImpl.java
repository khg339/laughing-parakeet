package com.cameldev.mypage.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.LoginDTO;
import com.cameldev.mypage.domain.UserVO;
import com.cameldev.mypage.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Inject
	private final UserDAO userDAO;
	
	@Inject
	public UserServiceImpl(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	//회원가입 처리
	@Override
	public void register(UserVO userVO) throws Exception{
		userDAO.register(userVO);
	}

	//로그인 처리
	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		return userDAO.login(loginDTO);
	}
	
	//회원정보보기
		@Override
		public UserVO readMember(String id) throws Exception {
			System.out.println("S : readMember()실행");
			
			return userDAO.readMember(id);
			
		}

}
