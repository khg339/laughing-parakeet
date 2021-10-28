package com.cameldev.mypage.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.NoticeDTO;
import com.cameldev.mypage.domain.majorDTO;

@Repository
public class majorDAOImpl implements majorDAO {
	 @Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.cameldev.mypage.major.majorMapper";
	
	@Override
	public List<majorDTO> list() throws Exception {
		return sql.selectList(namespace + ".majorlist");
	}

}
