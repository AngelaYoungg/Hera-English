package com.backproj.mini.service;

import com.backproj.mini.dto.Member;

public interface MainService {
	boolean login(String id, String password) throws Exception;
	void signup(Member mem) throws Exception;
}
