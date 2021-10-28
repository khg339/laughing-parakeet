package com.cameldev.mypage.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	 @Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.cameldev.mypage.notice.noticeMapper";
	
	@Override
	public List<NoticeDTO> list() throws Exception {
		return sql.selectList(namespace + ".noticelist");
	}
	@Override
	public List<NoticeDTO> list2() throws Exception {
		return sql.selectList(namespace + ".noticelist2");
	}
	
	@Override
	public NoticeDTO select(String noticeno) {
		NoticeDTO dto=(NoticeDTO) sql.selectOne("select",noticeno);
		return dto;
	}

}