package com.qt.work.orderinformation.service;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qt.work.cart.mapper.CartMapper;
import com.qt.work.cart.model.CartModel;
import com.qt.work.goodsinformation.mapper.InformationMapper;
import com.qt.work.goodsinformation.model.InformationModel;
import com.qt.work.ordergoods.mapper.OrdergoodsMapper;
import com.qt.work.ordergoods.model.OrdergoodsModel;
import com.qt.work.orderinformation.mapper.OrderMapper;
import com.qt.work.orderinformation.model.OrderModel;
import com.qt.work.util.FormatEmpty;

@Service
public class OrderService {

	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private CartMapper cartMapper;
	@Autowired
	public OrdergoodsMapper ordergoodsMapper;
	@Autowired
	private InformationMapper informationMapper;
	//下单
	public String order(OrderModel orderModel,String id2[]) {
	  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
      String date=df.format(new Date()).toString();
      String code = UUID.randomUUID().toString();
      orderModel.setCode(code);
      orderModel.setTime(date);
      orderModel.setState("已付款");
      OrderModel om=new OrderModel();
      om.setCode(code);
      List<OrderModel>list=orderMapper.selectModel(om);
      if(FormatEmpty.isEmpty(list)) {
    	  orderMapper.insert(orderModel);
    	  for(String aa:id2) {
    		CartModel cartModel=new CartModel();
  			cartModel.setId(Integer.parseInt(aa));
  			cartModel=cartMapper.select2(cartModel);
  			//修改库存数量
  			InformationModel im=new InformationModel();
  			im.setCode(cartModel.getGoodscode());
  			int x=informationMapper.select(im).get(0).getInventory()-cartModel.getNum();
  				im.setInventory(x);
  				informationMapper.updateActive(im);
			
  			
  			OrdergoodsModel ogm=new OrdergoodsModel();
  			ogm.setCode(code);
  			ogm.setUser(orderModel.getUser());
  			ogm.setGoods(cartModel.getGoodscode());
  			ogm.setNumber(cartModel.getNum());
  			ogm.setUnit_price(cartModel.getPrice());
  			cartMapper.delete(cartModel);
  			ordergoodsMapper.insert(ogm);
    	  }
    	  return "1";
      }else{
    	  return "0";
	}
	}
	//遍历
	public String selectpage(OrderModel orderModel) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("count", orderMapper.selectCount(orderModel));
		map.put("order", orderMapper.selectAll(orderModel));
		return new JSONObject(map).toString();
	}
	//删除
	public String del(OrderModel orderModel) {
		if(orderMapper.delete(orderModel)==1) {
			OrdergoodsModel ogm=new OrdergoodsModel();
			ogm.setCode(orderModel.getCode());
			ordergoodsMapper.delete(ogm);
			return "1";
		}else {
			return "0";
		}
	}
	//用户遍历
	public String selectpage2(OrderModel orderModel) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("count", orderMapper.selectCount(orderModel));
		map.put("order", orderMapper.selectAll(orderModel));
		return new JSONObject(map).toString();
	}
}
