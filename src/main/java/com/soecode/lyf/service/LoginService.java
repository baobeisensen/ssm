package com.soecode.lyf.service;

import com.soecode.lyf.dto.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

public interface LoginService {
	public String login(@Param("userName") String userName, @Param("pwd") String pwd);

	String register(@Param("userName")String userName,@Param("pwd")String pwd);

}
