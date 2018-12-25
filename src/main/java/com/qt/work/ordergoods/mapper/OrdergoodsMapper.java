package com.qt.work.ordergoods.mapper;

import java.util.List;

import com.qt.work.ordergoods.model.OrdergoodsModel;

public interface OrdergoodsMapper {
    int insert(OrdergoodsModel t);

    int delete(OrdergoodsModel GoodsModel);

    int deleteModel(OrdergoodsModel t);

    int update(OrdergoodsModel t);

    int updateActive(OrdergoodsModel t);

    OrdergoodsModel selectId(Object id);

    List<OrdergoodsModel> selectAll(OrdergoodsModel t);

    List<OrdergoodsModel> select(OrdergoodsModel t);

    int selectCount(OrdergoodsModel t);
}
