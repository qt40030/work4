package com.qt.work.goods.model;
import com.qt.work.util.Pager;
public class GoodsModel extends Pager{
private Integer id;
private String code; //类型编号
private String name; //类型名称
private String descr; //类别描述
private String parentcode;//上级code
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
public String getDescr() {
	return descr;
}
public void setDescr(String descr) {
	this.descr = descr;
}
public String getParentcode() {
	return parentcode;
}
public void setParentcode(String parentcode) {
	this.parentcode = parentcode;
}
@Override
public String toString() {
	return "GoodsModel [id=" + id + ", code=" + code + ", name=" + name + ", descr=" + descr + ", parentcode="
			+ parentcode + "]";
}
}
