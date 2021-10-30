package com.cameldev.mypage.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cameldev.mypage.domain.StarVO;
import com.cameldev.mypage.persistence.StarDAO;

@Service
public class StarServiceImpl implements StarService {
	
	
	private final StarDAO starDAO;
	
	@Inject
	public StarServiceImpl(StarDAO starDAO) {
		this.starDAO = starDAO;
	}


	@Override public void addstar(StarVO starVO) throws Exception { 
		starDAO.addstar(starVO); 
	}

	@Override 
	public void delete(String noticeno) throws Exception { 
		starDAO.delete(noticeno); 
	}

	@Override
	public List<StarVO> starlist(int memberno) throws Exception { 
		System.out.println("S : starlist()실행");
		return starDAO.starlist(memberno); 
	}

}
