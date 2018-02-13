package com.soecode.lyf.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

public interface LoginService {
	public String login(@Param("userName") String userName, @Param("pwd") String pwd);
}
