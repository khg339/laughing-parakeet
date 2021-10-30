package com.cameldev.mypage.persistence;

import com.cameldev.mypage.domain.CommentVO;

public interface CommentDAO {
	public abstract CommentVO commentselect(String noticeno);

}
