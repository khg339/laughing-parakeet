package com.cameldev.mypage.service;

import java.util.List;

import com.cameldev.mypage.domain.StarVO;
import com.cameldev.mypage.persistence.StarDAO;

public interface StarService {

	void delete(String noticeno) throws Exception;

	List<StarVO> starlist(int memberno) throws Exception;

}
