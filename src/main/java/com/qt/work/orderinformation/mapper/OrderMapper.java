package com.qt.work.orderinformation.mapper;

import java.util.List;

import com.qt.work.orderinformation.model.OrderModel;


public interface OrderMapper {
	 int insert(OrderModel t);

	    int delete(OrderModel GoodsModel);

	    int deleteModel(OrderModel t);

	    int update(OrderModel t);

	    int updateActive(OrderModel t);

	    OrderModel selectId(Object id);

	    List<OrderModel> selectAll(OrderModel t);

	    List<OrderModel> selectModel(OrderModel t);

	    int selectCount(OrderModel t);
}
