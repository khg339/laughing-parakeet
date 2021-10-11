package com.cameldev.mypage.persistence;

import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.NoticeDTO;
import com.cameldev.mypage.domain.NoticeForm;

@Repository
public class NoticeDAO {
	
	@Resource(name="sqlSession")
	private SqlSession sqlSession;

	
	private static final String NAMESPACE="com.cameldev.mypage.notice.noticeMapper";
	
	public List<NoticeDTO> getNoticeList(NoticeForm noticeFrom) throws Exception{
		return sqlSession.selectList(NAMESPACE+".getNoticeList");
	}

}
