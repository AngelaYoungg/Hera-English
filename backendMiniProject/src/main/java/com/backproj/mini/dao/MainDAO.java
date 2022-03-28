package com.backproj.mini.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.backproj.mini.dto.Member;

@Mapper
@Repository
public interface MainDAO {
	public Member queryMember(String id) throws Exception;
	public void insertMember(Member mem) throws Exception;
}
