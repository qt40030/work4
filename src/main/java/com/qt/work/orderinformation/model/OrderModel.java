package com.qt.work.orderinformation.model;

import com.qt.work.util.Pager;

public class OrderModel extends Pager {
private Integer id;
private String code;//订单编号
private String user;//用户编号
private String time;//时间
private String address;//地址
private String state;//状态
private Integer total_price;//总价


public Integer getTotal_price() {
	return total_price;
}
public void setTotal_price(Integer total_price) {
	this.total_price = total_price;
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
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
@Override
public String toString() {
	return "OrderModel [code=" + code + ", user=" + user + ", time=" + time + ", address=" + address + ", state="
			+ state + "]";
}

}
