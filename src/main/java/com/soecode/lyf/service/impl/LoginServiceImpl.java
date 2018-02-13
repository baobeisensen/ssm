package com.soecode.lyf.service.impl;

import com.soecode.lyf.dao.LoginDao;
import com.soecode.lyf.dto.User;
import com.soecode.lyf.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginDao loginDao;
	@Override
	public String login(String userName, String pwd) {
		User user = loginDao.login(userName,pwd);
		if(null!=user){
			return user.getNickName();
		}else {
			return "帐号或密码错误";
		}

	}
}
