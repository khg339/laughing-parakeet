package com.cameldev.mypage.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.Lab_joinVO;

@Repository
public class Lab_joinDAOImpl implements Lab_joinDAO {
	
	private static final String NAMESPACE = "com.cameldev.mypage.mappers.lab.lab_joinMapper";
	
	private final SqlSession sqlSession;
	
	@Inject
	public Lab_joinDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 랩실 지원 처리
	@Override
	public void apply(Lab_joinVO lab_joinVO) throws Exception{
		sqlSession.insert(NAMESPACE + ".apply", lab_joinVO);
	}
			

}
