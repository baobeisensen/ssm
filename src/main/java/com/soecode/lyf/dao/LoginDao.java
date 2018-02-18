package com.soecode.lyf.dao;

import com.soecode.lyf.dto.User;
import org.apache.ibatis.annotations.Param;

import java.util.UUID;

public interface LoginDao {
	public User login(@Param("userName") String userName, @Param("pwd") String pwd);

	Integer ifhaveduserName(@Param("userName")String userName);

	Integer insert(@Param("userName") String userName,@Param("pwd") String pwds);
}
