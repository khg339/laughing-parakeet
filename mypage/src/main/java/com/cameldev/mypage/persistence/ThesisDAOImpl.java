package com.cameldev.mypage.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.ThesisDTO;
import com.cameldev.mypage.domain.majorDTO;

@Repository
public class ThesisDAOImpl implements ThesisDAO{
	 @Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.cameldev.mypage.thesis.thesisMapper";
	
	@Override
	public List<ThesisDTO> list() throws Exception {
		return sql.selectList(namespace + ".thesislist");
	}

}
