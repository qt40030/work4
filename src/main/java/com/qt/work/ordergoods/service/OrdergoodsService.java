package com.qt.work.ordergoods.service;

import java.util.HashMap;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qt.work.ordergoods.mapper.OrdergoodsMapper;
import com.qt.work.ordergoods.model.OrdergoodsModel;

@Service
public class OrdergoodsService {

	@Autowired
	public OrdergoodsMapper ordergoodsMapper;


	//遍历
	public String select(OrdergoodsModel ordergoodModel) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("order", ordergoodsMapper.selectAll(ordergoodModel));
		return new JSONObject(map).toString();
	}
	//删除
	public String del(OrdergoodsModel ordergoodModel) {
		if(ordergoodsMapper.delete(ordergoodModel)==1) {
			return "1";
		}else {
			return "0";
		}
	}
}
