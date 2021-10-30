package com.cameldev.mypage.persistence;

import java.util.List;

import com.cameldev.mypage.domain.ThesisDTO;

public interface ThesisDAO {
	public List list() throws Exception; 
	public abstract ThesisDTO thesisselect(String thesisno);
}
