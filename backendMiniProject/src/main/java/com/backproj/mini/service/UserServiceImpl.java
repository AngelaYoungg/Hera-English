package com.backproj.mini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.backproj.mini.dao.UserDAO;
import com.backproj.mini.dto.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO ud;

	@Override
	public void subpage(User user) throws Exception {
		ud.insertUser(user);
	}
	@Override
	public List<User> allUserInfo() throws Exception {
		return ud.userList();
	}

}
