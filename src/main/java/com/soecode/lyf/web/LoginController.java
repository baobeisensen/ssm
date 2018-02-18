package com.soecode.lyf.web;

import com.soecode.lyf.dto.User;
import com.soecode.lyf.service.LoginService;
import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Resource
    private LoginService loginService;

   /* @ResponseBody
    @RequestMapping("/logon")
    public String login(String userName, String password, Model model){
        Map<String,String> map = null;
        List<Map<String,String>> newses = new ArrayList<Map<String,String>>() ;
        model.addAttribute("content_div",newses);
        return "login";

    }*/
	//@ResponseBody
	@RequestMapping("/login")
	public String login(@RequestParam(defaultValue = "username") String userName, @RequestParam(defaultValue = "password") String password, Model model, HttpSession session){
		logger.info("用户"+userName+"登陆");
		try{
		String loginResult = loginService.login(userName,password);
		if (loginResult!=null&&!("").equals(loginResult)&&!("帐号或密码错误").equals(loginResult)){
			User user = new User();
			user.setUserName(userName);
			user.setPassWord(password);
			session.setAttribute("user", user);
			model.addAttribute("msg", loginResult);
			return "cpts_649_bpo/index";
		}else if(("帐号或密码错误").equals(loginResult)){
			logger.info("登陆失败：用户名"+userName+"密码:"+password+"失败信息："+loginResult);
			model.addAttribute("msg", "帐号或密码错误");
			return "login";
		}else {
			return "Exception";
		}

		}catch(Exception e){
			System.out.print("--------------------------------------------------------"+e);
			logger.info("帐号或密码为空"+e);
		}

		return "Exception";
	}
	@ResponseBody
	@RequestMapping("/loginin")
    public String loginin(Model model){
		Map<String,String> map = new HashMap<String,String>();
		List<Map<String,String>> newses = new ArrayList<Map<String,String>>() ;
		for (int i = 0; i< 10; i++){
			map =new HashMap<String,String>();
			map.put("title","xiaoming"+i);
			newses.add(map);
		}
		return "news";
	}
	@ResponseBody
	@RequestMapping("/register")
	public String register(ModelAndView modelAndView,@Param("userName") String userName,@Param("pwd")String pwd){
		String ifhave = loginService.register(userName,pwd);
		return ifhave;

	}

}
