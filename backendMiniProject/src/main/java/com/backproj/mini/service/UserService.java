package com.backproj.mini.service;

import java.util.List;

import com.backproj.mini.dto.User;

public interface UserService {
	void subpage(User user) throws Exception;
	List<User> allUserInfo() throws Exception;
}

