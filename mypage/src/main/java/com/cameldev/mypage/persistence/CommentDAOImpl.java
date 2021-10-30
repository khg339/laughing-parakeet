package com.cameldev.mypage.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cameldev.mypage.domain.CommentVO;

@Repository
public class CommentDAOImpl implements CommentDAO{
	@Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.cameldev.mypage.notice.noticeMapper";
	 
	 @Override
		public CommentVO commentselect(String noticeno) {
			CommentVO commentVO=(CommentVO)sql.selectOne("commentlist",noticeno);
			return commentVO;
		}
}
