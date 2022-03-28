package com.backproj.mini.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.backproj.mini.dao.MainDAO;
import com.backproj.mini.dto.Member;

@Service
public class MainServiceImpl implements MainService {
	@Autowired 
	MainDAO md;
	
	@Override
	public boolean login(String id, String password) throws Exception {
		Member mem=md.queryMember(id);
		if(mem==null) {
			throw new Exception("존재하지 않는 아이디입니다");
		} else if(!password.equals(mem.getPassword())) {
			throw new Exception("비밀번호가 일치하지 않습니다");
		} else if(password.equals(mem.getPassword())) {
			return true;
		}
		return false;
	}

	@Override
	public void signup(Member mem) throws Exception {
		md.insertMember(mem);
	} 
}