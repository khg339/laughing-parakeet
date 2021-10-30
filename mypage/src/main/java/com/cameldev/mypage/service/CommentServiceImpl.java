package com.cameldev.mypage.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.CommentVO;
import com.cameldev.mypage.persistence.CommentDAO;

@Service
public class CommentServiceImpl implements CommentService{
	@Inject
	private CommentDAO commentDAO;
	
	@Override
	public CommentVO commmentselect(String noticeno) {
		return commentDAO.commentselect(noticeno);
	}

}
