package com.cameldev.mypage.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.StarVO;

@Repository 
public class StarDAOImpl implements StarDAO {
	
	private static final String NAMESPACE = "com.cameldev.mypage.mappers.article.ArticleMapper"; 
	
	private final SqlSession sqlSession; 
	
	@Inject 
	public StarDAOImpl(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}

	@Override 
	public void addstar(StarVO starVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".add", starVO); 
	}

	@Override 
	public void delete(String noticeno) throws Exception {
		sqlSession.delete(NAMESPACE + ".delete", noticeno); }

	
	public List<StarVO> starlist(int memberno) throws Exception { 
		 return sqlSession.selectList(NAMESPACE + ".starlist" ,memberno);
	}



}
