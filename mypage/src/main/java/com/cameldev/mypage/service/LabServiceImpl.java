package com.cameldev.mypage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.LabDTO2;
import com.cameldev.mypage.persistence.LabDAO;

@Service
public class LabServiceImpl implements LabService{
	@Inject
	private LabDAO labDAO;
	@Override
	public List<LabDTO2>list() throws Exception{
		return labDAO.list();
	}

}
