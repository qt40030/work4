package com.qt.work.user.model;

import com.qt.work.util.Pager;

public class UserModel extends Pager{
private Integer id;
private String code;
private String name;
private String pass;
private String grade;
private String authCode;

public String getAuthCode() {
	return authCode;
}
public void setAuthCode(String authCode) {
	this.authCode = authCode;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}

public String getGrade() {
	return grade;
}
public void setGrade(String grade) {
	this.grade = grade;
}
@Override
public String toString() {
	return "UserModel [id=" + id + ", code=" + code + ", name=" + name + ", pass=" + pass + ", grade=" + grade + "]";
}
}
