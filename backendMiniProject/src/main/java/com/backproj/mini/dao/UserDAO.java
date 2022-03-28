package com.backproj.mini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.backproj.mini.dto.User;

@Mapper
@Repository
public interface UserDAO {
 public void insertUser(User user) throws Exception;
 public List<User> userList() throws Exception;
}
