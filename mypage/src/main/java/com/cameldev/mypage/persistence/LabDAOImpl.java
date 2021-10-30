package com.cameldev.mypage.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.LabDTO2;
import com.cameldev.mypage.domain.majorDTO;

@Repository
public class LabDAOImpl implements LabDAO{
	@Inject
	private SqlSession sql;
	 
	 private static String namespace = "com.cameldev.mypage.lab.labMapper";
	
	@Override
	public List<LabDTO2> list() throws Exception {
		return sql.selectList(namespace + ".lablist");
	}
	@Override
	public List<LabDTO2> list2() throws Exception {
		return sql.selectList(namespace + ".lablist2");
	}

}
