package com.qt.work.image.model;

public class ImgModel {
private Integer id;
private String code;
private String url;
private String type;
private String name;
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
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
@Override
public String toString() {
	return "ImgModel [id=" + id + ", code=" + code + ", url=" + url + ", type=" + type + "]";
}

}
