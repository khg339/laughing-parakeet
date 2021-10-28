package com.cameldev.mypage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.ThesisDTO;
import com.cameldev.mypage.persistence.ThesisDAO;

@Service
public class ThesisServiceImpl implements ThesisService{
	@Inject
	private ThesisDAO thesisDAO;
	@Override
	public List<ThesisDTO>list() throws Exception{
		return thesisDAO.list();
	}

}
