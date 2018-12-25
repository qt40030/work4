package com.qt.work.cart.mapper;

import java.util.List;

import com.qt.work.cart.model.CartModel;



public interface CartMapper {
    int insert(CartModel t);

    int delete(CartModel UserModel);

    int deleteModel(CartModel t);

    int update(CartModel t);

    int updateActive(CartModel t);
    
    int updateActive2(CartModel t);

    CartModel selectId(Object id);

    List<CartModel> selectAll(CartModel t);

    List<CartModel> selectModel(CartModel t);
    
    CartModel select2(CartModel t);
    
    int selectCount(CartModel t);
}
