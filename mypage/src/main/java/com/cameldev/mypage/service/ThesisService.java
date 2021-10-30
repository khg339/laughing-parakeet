package com.cameldev.mypage.service;

import java.util.List;

import com.cameldev.mypage.domain.ThesisDTO;

public interface ThesisService {
	public List list() throws Exception;

	public abstract ThesisDTO read(String thesisno);

}
