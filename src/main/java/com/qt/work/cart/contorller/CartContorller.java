package com.qt.work.cart.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qt.work.cart.model.CartModel;
import com.qt.work.cart.service.CartService;
@Controller
@RequestMapping("cartController")
public class CartContorller {
	@Autowired
	private CartService cartService;
	@RequestMapping("/insert")
	@ResponseBody
	public String insert(CartModel cartModel) {
		return cartService.insert(cartModel);
	}
	@RequestMapping("/insert2")
	@ResponseBody
	public String insert2(CartModel cartModel) {
		return cartService.insert2(cartModel);
	}
	@RequestMapping(value="/select",produces="application/json;charset=UTF-8")
	@ResponseBody
	private String select(CartModel cartModel) {
		return cartService.select(cartModel);
	}
	@RequestMapping("/update")
	@ResponseBody
	private String update(CartModel cartModel) {
		return cartService.update(cartModel);
	}
	@RequestMapping("/del")
	@ResponseBody
	private String del(CartModel cartModel) {
		return cartService.del(cartModel);
	}
	@RequestMapping(value="sel",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String sel(String id[]) {
		return cartService.sel(id);
	}
}
