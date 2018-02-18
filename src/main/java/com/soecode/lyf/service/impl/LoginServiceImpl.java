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

	@Override
	public String register(String userName, String pwd) {
		//判断是否帐号重复
		Integer ifhaveduserName = loginDao.ifhaveduserName(userName);
		if (1<=ifhaveduserName){
			return "帐号已存在";
		}else {
			Integer result = loginDao.insert(userName,pwd);
			if (1==result){
				return "success";
			}else {
				return "网络异常,请稍后再试";
			}
		}
	}

}
