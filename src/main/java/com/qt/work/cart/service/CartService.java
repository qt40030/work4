package com.qt.work.cart.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qt.work.cart.mapper.CartMapper;
import com.qt.work.cart.model.CartModel;
import com.qt.work.goodsinformation.mapper.InformationMapper;
import com.qt.work.goodsinformation.model.InformationModel;


@Service
public class CartService {
	@Autowired
	private CartMapper cartMapper;
	@Autowired
	private InformationMapper informationMapper;
	//加入购物车
	public String insert(CartModel cartModel) {
		InformationModel im=new InformationModel();
		CartModel cm=new CartModel();
		cm.setCode(cartModel.getGoodscode());
		im.setCode(cartModel.getGoodscode());
		List<InformationModel> list=informationMapper.selectAll(im);
		List<CartModel> list2=cartMapper.selectModel(cm);
		if(list2.get(0).getGoodscode().equals(cartModel.getGoodscode())) {
			int x=list2.get(0).getNum()+cartModel.getNum();
			cm.setNum(x);
			System.out.println(cm);
			cartMapper.updateActive2(cm);
			return "1";
		}else if(list.get(0).getInventory()<cartModel.getNum()) {
			return "0";
		}else {
			 cartMapper.insert(cartModel);
			 return "1";
		}
	}
	public String insert2(CartModel cartModel) {
		InformationModel im=new InformationModel();
		im.setCode(cartModel.getGoodscode());
		List<InformationModel> list=informationMapper.selectAll(im);
		if(list.get(0).getInventory()<cartModel.getNum()) {
			return "0";
		}else {
			 return "1";
		}
	}
	
	//遍历购物车
	public String select(CartModel cartModel) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("goods",cartMapper.selectAll(cartModel));
		return new JSONObject(map).toString();
	}
	
	public String update(CartModel cartModel) {
		 cartMapper.updateActive(cartModel);
		 return "1";
	}
	public String del(CartModel cartModel) {
		if(cartMapper.delete(cartModel)==1) {
			return "1";
		}else {
			return "0";
		}
	}
	//确认订单
	public String sel(String id[]) {
		HashMap<String,Object>map=new HashMap<>();
		List<CartModel>list=new ArrayList<>();
		for(int i=0;i<id.length;i++) {
			CartModel cartModel=new CartModel();
			cartModel.setId(Integer.parseInt(id[i]));
			list.add(cartMapper.select2(cartModel));
		}
		map.put("goods",list);
		return new JSONObject(map).toString();
	}
}
