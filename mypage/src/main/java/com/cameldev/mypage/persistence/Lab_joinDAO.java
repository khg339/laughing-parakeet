package com.cameldev.mypage.persistence;

import com.cameldev.mypage.domain.Lab_joinVO;

public interface Lab_joinDAO {

	// 랩실 지원 처리
	void apply(Lab_joinVO lab_joinVO) throws Exception;
	
}
