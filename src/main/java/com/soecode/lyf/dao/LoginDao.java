package com.soecode.lyf.dao;

import com.soecode.lyf.dto.User;
import org.apache.ibatis.annotations.Param;

public interface LoginDao {
	public User login(@Param("userName") String userName, @Param("pwd") String pwd);
}
