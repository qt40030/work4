package com.qt.work.user.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qt.work.util.FormatEmpty;
import com.qt.work.util.MD5;
import com.qt.work.user.mapper.UserMapper;
import com.qt.work.user.model.UserModel;

@Service
public class UserService {
@Autowired
private UserMapper usermapper;

public List<UserModel>select(UserModel userModel){
	if(!FormatEmpty.isEmpty(userModel.getPass())) {
		userModel.setPass(MD5.mmd(userModel.getPass()));
	}
	List<UserModel>list=usermapper.select(userModel);
	if(!FormatEmpty.isEmpty(list)) {
		return list;
	}else {
		return null;
	}

}
/**
 * 0 账号已存在
 * 1 注册成功
 * 2 注册失败
 */
public String register(UserModel userModel,HttpSession session) {
  UserModel um= new UserModel();
  um.setCode(userModel.getCode());
  List<UserModel>list=usermapper.select(um);
  userModel.setPass(MD5.mmd(userModel.getPass()));
  if(!userModel.getAuthCode().equals(session.getAttribute("authCode"))){
  	return "3";
  }else if(!FormatEmpty.isEmpty(list)) {
	  return "0";
  }else if(FormatEmpty.isEmpty(list)){
	  usermapper.insert(userModel);
	  return "1";
  }else {
	  return "2";
  }
}
//分页查询
public String users(UserModel userModel) {
	userModel.setName(userModel.getName());
	HashMap<String,Object>map=new HashMap<>();
	map.put("count",usermapper.selectCount(userModel));
	map.put("user", usermapper.selectAll(userModel));
	return new JSONObject(map).toString();
}
//修改
//public String update(UserModel userModel) {
//	List<UserModel>list=usermapper.select(userModel);
//	return new JSONObject(list).toString();
//}
public Integer update2(UserModel userModel) {
	if(!FormatEmpty.isEmpty(userModel.getPass())) {
		userModel.setPass(MD5.mmd(userModel.getPass()));
	}
	return usermapper.updateActive(userModel);
}

//删除
public Integer delete(UserModel userModel) {
	return usermapper.delete(userModel);
}
}
