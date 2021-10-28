package com.cameldev.mypage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.majorDTO;
import com.cameldev.mypage.persistence.majorDAO;
@Service
public class majorServiceImpl implements majorService{
	@Inject
	private majorDAO majorDAO;
	@Override
	public List<majorDTO>list() throws Exception{
		return majorDAO.list();
	}

}
