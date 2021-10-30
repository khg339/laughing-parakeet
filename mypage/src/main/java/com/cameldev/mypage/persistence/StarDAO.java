package com.cameldev.mypage.persistence;

import java.util.List;

import javax.inject.Inject;

import com.cameldev.mypage.domain.StarVO;

public interface StarDAO {
	 
	void addstar(StarVO starVO) throws Exception;

	void delete(String noticeno) throws Exception;
	
    List<StarVO> starlist(int memberno) throws Exception ;
}