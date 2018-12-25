package com.qt.work.goodsinformation.model;

import com.qt.work.util.Pager;

public class InformationModel extends Pager{
private Integer id;  
private String code; //编号
private String name; //商品名
private Integer price;//价格
private String descr;//描述
private Integer inventory;//库存
private String state;//状态
private String belong;//所属
private String url;

public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
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
public Integer getPrice() {
	return price;
}
public void setPrice(Integer price) {
	this.price = price;
}
public String getDescr() {
	return descr;
}
public void setDescr(String descr) {
	this.descr = descr;
}
public Integer getInventory() {
	return inventory;
}
public void setInventory(Integer inventory) {
	this.inventory = inventory;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getBelong() {
	return belong;
}
public void setBelong(String belong) {
	this.belong = belong;
}
@Override
public String toString() {
	return "InformationModel [id=" + id + ", code=" + code + ", name=" + name + ", price=" + price + ", descr=" + descr
			+ ", inventory=" + inventory + ", state=" + state + ", belong=" + belong + "]";
}
}
