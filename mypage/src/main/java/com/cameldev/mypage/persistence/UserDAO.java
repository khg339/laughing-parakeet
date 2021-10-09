package com.cameldev.mypage.persistence;

import com.cameldev.mypage.domain.LoginDTO;
import com.cameldev.mypage.domain.UserVO;

public interface UserDAO {
	
	// ȸ������ ó�� 
	void register(UserVO userVO) throws Exception;

	//�α��� ó��
	UserVO login(LoginDTO loginDTO) throws Exception;
}
