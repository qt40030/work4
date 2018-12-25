package com.qt.work.goodsinformation.mapper;
import java.util.List;
import com.qt.work.goodsinformation.model.InformationModel;

public interface InformationMapper {
    int insert(InformationModel t);

    int delete(InformationModel GoodsModel);

    int deleteModel(InformationModel t);

    int update(InformationModel t);

    int updateActive(InformationModel t);

    InformationModel selectId(Object id);

    List<InformationModel> selectAll(InformationModel t);
    
    List<InformationModel> selectModel(InformationModel t);

    List<InformationModel> select(InformationModel t);

    int selectCount(InformationModel t);
}