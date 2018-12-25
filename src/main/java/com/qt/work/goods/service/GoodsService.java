package com.qt.work.goods.service;

import java.util.HashMap;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.qt.work.goods.mapper.GoodsMapper;
import com.qt.work.goods.model.GoodsModel;
import com.qt.work.util.FormatEmpty;

@Service
public class GoodsService {
@Autowired
private GoodsMapper goodsmapper;
public List<GoodsModel>select(GoodsModel goodsModel){
	List<GoodsModel>list=goodsmapper.select(goodsModel);
	if(!FormatEmpty.isEmpty(list)) {
		return list;
	}else {
		return null;
	}
}
//添加
public String insert(GoodsModel goodsModel) {
	GoodsModel gm=new GoodsModel();
	gm.setCode(goodsModel.getCode());
	List<GoodsModel>list=goodsmapper.select(goodsModel);
	  if(!FormatEmpty.isEmpty(list)) {
		  return "0";
	  }else if(FormatEmpty.isEmpty(list)){
		 goodsmapper.insert(goodsModel);
		  return "1";
	  }else {
		  return "2";
	  }
}
//分页查询
public String goods(GoodsModel goodsModel) {
	HashMap<String,Object>map=new HashMap<>();
	map.put("count",goodsmapper.selectCount(goodsModel));
	map.put("goods", goodsmapper.selectAll(goodsModel));
	return new JSONObject(map).toString();
}
//查询父类
public String select2(GoodsModel goodsModel,Model model){
	GoodsModel gm=new GoodsModel();
	gm.setParentcode("x");
	List<GoodsModel>list=goodsmapper.select(gm);
	HashMap<String,Object>map=new HashMap<>();
	map.put("goods",list);
    model.addAttribute("parentcode",list.get(0).getParentcode());
	return new JSONObject(map).toString();
}
public String select3(GoodsModel goodsModel,Model model){
	List<GoodsModel>list=goodsmapper.select(goodsModel);
	HashMap<String,Object>map=new HashMap<>();
	map.put("goods",list);
    model.addAttribute("parentcode",list.get(0).getParentcode());
	return new JSONObject(map).toString();
}
//修改
public Integer update(GoodsModel goodsModel) {
	return goodsmapper.updateActive(goodsModel);
}
//删除
public String delset(GoodsModel goodsModel){
	GoodsModel gm=new GoodsModel();
	gm.setParentcode(goodsModel.getCode());
	List<GoodsModel>list=goodsmapper.select(gm);
	if(!FormatEmpty.isEmpty(list)) {
		return "0";
	}else {
		goodsmapper.delete(goodsModel);
		return "1";
	}
}
}
