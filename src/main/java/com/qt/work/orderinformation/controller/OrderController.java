package com.qt.work.orderinformation.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qt.work.orderinformation.model.OrderModel;
import com.qt.work.orderinformation.service.OrderService;

@Controller
@RequestMapping("orderController")
public class OrderController {

	@Autowired
	private OrderService orderService;
	//下单
	@RequestMapping("order")
	@ResponseBody
	public String order(OrderModel orderModel,String id2[]) {
        return orderService.order(orderModel,id2);
	}
	//遍历
	@RequestMapping(value="/selectpage",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String selectpage(OrderModel orderModel,Model model) {
		return orderService.selectpage(orderModel);
	}
	@RequestMapping("del")
	@ResponseBody
	public String del(OrderModel orderModel) {
		return orderService.del(orderModel);
	}
	@RequestMapping(value="/selectpage2",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String selectpage2(OrderModel orderModel) {
		return orderService.selectpage2(orderModel);
	}
}
