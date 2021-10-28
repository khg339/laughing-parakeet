package com.cameldev.mypage.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.LoginDTO;
import com.cameldev.mypage.domain.UserVO;

@Repository 
public class UserDAOImpl implements UserDAO {
	private static final String NAMESPACE = "com.cameldev.mypage.mappers.user.UserMapper"; 
	
	private final SqlSession sqlSession; 
	
	@Inject 
	public UserDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession; 
	} 
	
	// 회원가입 처리
	@Override 
	public void register(UserVO userVO) throws Exception { 
		   sqlSession.insert(NAMESPACE + ".register", userVO);
    }

	// 로그인 처리
	@Override
	public UserVO login(LoginDTO loginDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".login", loginDTO);
	} 
	
	@Override
	public UserVO readMember(String userid) throws Exception {
		//테스트(컨트롤러) 호출 -> 정보를 저장 -> DB로이동
		UserVO vo = sqlSession.selectOne(NAMESPACE+".readMember", userid); 
		return vo;
	}
}


