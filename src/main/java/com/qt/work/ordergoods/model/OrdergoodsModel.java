package com.qt.work.ordergoods.model;

public class OrdergoodsModel {
private Integer id;
private String code;//订单编号
private String user;//用户
private String goods;//商品编号
private Integer number;//数量
private String name;//用户名
private Integer unit_price;
private String url;//图片


public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
public Integer getUnit_price() {
	return unit_price;
}
public void setUnit_price(Integer unit_price) {
	this.unit_price = unit_price;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
public String getGoods() {
	return goods;
}
public void setGoods(String goods) {
	this.goods = goods;
}
public Integer getNumber() {
	return number;
}
public void setNumber(Integer number) {
	this.number = number;
}
@Override
public String toString() {
	return "OrdergoodsModel [id=" + id + ", code=" + code + ", user=" + user + ", goods=" + goods + ", number=" + number
			+ "]";
}

}
