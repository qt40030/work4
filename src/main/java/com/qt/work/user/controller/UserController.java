package com.qt.work.user.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.qt.work.user.model.UserModel;
import com.qt.work.user.service.UserService;
import com.qt.work.util.FormatEmpty;

@Controller
@RequestMapping("userController")
public class UserController {
	@Autowired
	private UserService userService;
	/**
	  *    登录
	 * 0 管理员
	 * 1 普通用户
	 * 2 账号或密码错误
	 */
	@RequestMapping("/login")
	@ResponseBody
	public String login(UserModel userModel, Model model, HttpSession session) {
		List<UserModel> list = userService.select(userModel);
	    if(!userModel.getAuthCode().equals(session.getAttribute("authCode"))){
	    	return "3";
	    }else if (!FormatEmpty.isEmpty(list) &&!FormatEmpty.isEmpty(list.get(0).getGrade())) {
			session.setAttribute("username", list.get(0).getName());
			session.setAttribute("usercode", list.get(0).getCode());
			return "0";
		} else if (!FormatEmpty.isEmpty(list)) {
			session.setAttribute("username", list.get(0).getName());
			session.setAttribute("usercode", list.get(0).getCode());
			return "1";
		} else {
			return "2";
		}
	}
	//注册
	@RequestMapping("/register")
	@ResponseBody
	public String register(UserModel userModel,HttpSession session) {
		return userService.register(userModel,session);
	}
	//用户遍历
	@RequestMapping(value="/select",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String select(UserModel userModel, Model model) {
		return userService.users(userModel);
	}
	//修改回显
	@RequestMapping(value="/select2",produces="application/json;charset=UTF-8")
	@ResponseBody
	public UserModel select2(UserModel userModel){
		System.out.println(userModel+"---------------");
		List<UserModel>list=userService.select(userModel);
		userModel.setCode(list.get(0).getCode());
		userModel.setName(list.get(0).getName());
         return userModel;
	}
	//修改账号密码
	@RequestMapping("/update")
	@ResponseBody
	public Integer update(UserModel userModel,HttpSession session) {
		int x =userService.update2(userModel);
		List<UserModel> list = userService.select(userModel);
		if(session.getAttribute("usercode").equals(list.get(0).getCode())) {
			session.setAttribute("username", list.get(0).getName());
		}
			return x;
	}
	//根据账号删除
	@RequestMapping("/delete")
	@ResponseBody
	public Integer delete(UserModel userModel){
		return userService.delete(userModel);
	}
	//根据账号删除
	@RequestMapping("/logout")
	@ResponseBody
	public String Logout(HttpSession session){
		 session.removeAttribute("usercode");
		 session.removeAttribute("username");
		return "1";
	}
}