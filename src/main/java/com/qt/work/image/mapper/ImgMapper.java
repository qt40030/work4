package com.qt.work.image.mapper;

import java.util.List;

import com.qt.work.image.model.ImgModel;


public interface ImgMapper {
	  int insert(ImgModel t);

	    int delete(ImgModel GoodsModel);

	    int deleteModel(ImgModel t);

	    int update(ImgModel t);

	    int updateActive(ImgModel t);

	    ImgModel selectId(Object id);

	    List<ImgModel> selectAll(ImgModel t);

	    List<ImgModel> select(ImgModel t);

	    int selectCount(ImgModel t);
}
