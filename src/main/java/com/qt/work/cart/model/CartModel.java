package com.qt.work.cart.model;

public class CartModel {
private Integer id;
private String usercode;
private String goodscode;
private Integer num;
private String code;
private String url;
private Integer price;
private String goodsname;

public String getGoodsname() {
	return goodsname;
}
public void setGoodsname(String goodsname) {
	this.goodsname = goodsname;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
} 
public Integer getPrice() {
	return price;
}
public void setPrice(Integer price) {
	this.price = price;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getUsercode() {
	return usercode;
}
public void setUsercode(String usercode) {
	this.usercode = usercode;
}
public String getGoodscode() {
	return goodscode;
}
public void setGoodscode(String goodscode) {
	this.goodscode = goodscode;
}
public Integer getNum() {
	return num;
}
public void setNum(Integer num) {
	this.num = num;
}
@Override
public String toString() {
	return "CartModel [id=" + id + ", usercode=" + usercode + ", goodscode=" + goodscode + ", num=" + num + ", code="
			+ code + ", url=" + url + ", price=" + price + ", goodsname=" + goodsname + "]";
}



}
