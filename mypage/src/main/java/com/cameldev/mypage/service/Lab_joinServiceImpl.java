package com.cameldev.mypage.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.Lab_joinVO;
import com.cameldev.mypage.persistence.Lab_joinDAO;


@Service
public class Lab_joinServiceImpl implements Lab_joinService{
	
	private final Lab_joinDAO lab_joinDAO;
	
	@Inject
	public Lab_joinServiceImpl(Lab_joinDAO lab_joinDAO) {
		this.lab_joinDAO = lab_joinDAO;
	}
	
	// 랩실 신청 처리
	@Override
	public void apply(Lab_joinVO lab_joinVO) throws Exception{
		lab_joinDAO.apply(lab_joinVO);
	}

}
