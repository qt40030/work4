package com.qt.work.goods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qt.work.goods.model.GoodsModel;
import com.qt.work.goods.service.GoodsService;

@Controller
@RequestMapping("goodsController")
public class GoodsController {
 
	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("/insert")
	@ResponseBody
	public String inset(GoodsModel goodsModel,Model model) {
		return goodsService.insert(goodsModel);
	}
	@RequestMapping(value="/goods",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String goods(GoodsModel goodsModel,Model model) {
		return goodsService.goods(goodsModel);
	}
	//查父类
	@RequestMapping(value="/goods2",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String goods2(GoodsModel goodsModel,Model model) {
		return goodsService.select2(goodsModel, model);
	}
	@RequestMapping(value="/goods3",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String goods3(GoodsModel goodsModel,Model model) {
		return goodsService.select3(goodsModel, model);
	}
	
	//修改回显
	@RequestMapping(value="/select2",produces="application/json;charset=UTF-8")
	@ResponseBody
	public GoodsModel select2(GoodsModel goodsModel) {
		List<GoodsModel>list=goodsService.select(goodsModel);
		goodsModel.setCode(list.get(0).getCode());
		goodsModel.setName(list.get(0).getName());
		goodsModel.setDescr(list.get(0).getDescr());
		goodsModel.setParentcode(list.get(0).getParentcode());
		return goodsModel;
	}
	//修改
	@RequestMapping("/update")
	@ResponseBody
	public Integer update(GoodsModel goodsModel) {
		return goodsService.update(goodsModel);
	}
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(GoodsModel goodsModel) {
		return goodsService.delset(goodsModel);
		
	}
}
