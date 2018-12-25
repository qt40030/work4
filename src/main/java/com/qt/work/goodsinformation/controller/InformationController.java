package com.qt.work.goodsinformation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qt.work.goodsinformation.model.InformationModel;
import com.qt.work.goodsinformation.service.InformationService;
import com.qt.work.util.FormatEmpty;

@Controller
@RequestMapping("informationController")
public class InformationController {

	@Autowired
	private InformationService informationService;
	@RequestMapping("/insert")
	@ResponseBody
	public String insert(InformationModel informationModel,Model model) {
		return informationService.insert(informationModel);
	}
	//分页查询
	@RequestMapping(value="/selectpage",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String seletpage(InformationModel informationModel,Model model) {
		return informationService.selectpage(informationModel);
	}
	//删
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(InformationModel informationModel,Model model) {
		return informationService.delete(informationModel);
	}
	//修改回显
	@RequestMapping(value="/select",produces="application/json;charset=UTF-8")
	@ResponseBody
	public InformationModel select(InformationModel informationModel) {
		List<InformationModel>list=informationService.select(informationModel);
		informationModel.setCode(list.get(0).getCode());
		informationModel.setName(list.get(0).getName());
		informationModel.setPrice(list.get(0).getPrice());
		informationModel.setDescr(list.get(0).getDescr());
		informationModel.setInventory(list.get(0).getInventory());
		informationModel.setState(list.get(0).getState());
		informationModel.setBelong(list.get(0).getBelong());
		return informationModel;
	}
	//改
	@RequestMapping("/update")
	@ResponseBody
	public String update(InformationModel informationModel,Model model) {
		return informationService.update(informationModel);
	}
	@RequestMapping(value="/select2",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String select2(InformationModel informationModel,Model model) {
		System.out.println(informationModel);
		if(!FormatEmpty.isEmpty(informationModel.getName())) {
			informationModel.setName("%"+informationModel.getName()+"%");
		}
		return informationService.select2(informationModel);
	}
	@RequestMapping(value="/select3",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String select3(InformationModel informationModel,Model model) {
		System.out.println(informationModel);
		if(!FormatEmpty.isEmpty(informationModel.getName())) {
			informationModel.setName("%"+informationModel.getName()+"%");
		}
		return informationService.select3(informationModel);
	}
}
