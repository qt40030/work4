package com.qt.work.ordergoods.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qt.work.ordergoods.model.OrdergoodsModel;
import com.qt.work.ordergoods.service.OrdergoodsService;

@Controller
@RequestMapping("ordergoodsController")
public class OrdergoodsController {

	@Autowired
	private OrdergoodsService ordergoodsService;
	

	
	//遍历
	@RequestMapping(value="/select",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String select(OrdergoodsModel ordergoodsModel,Model model) {
		return ordergoodsService.select(ordergoodsModel);
	}
	
	//删除
	@RequestMapping("/del")
	@ResponseBody
	public String del(OrdergoodsModel ordergoodsModel,Model model) {
		return ordergoodsService.del(ordergoodsModel);
	}
}
