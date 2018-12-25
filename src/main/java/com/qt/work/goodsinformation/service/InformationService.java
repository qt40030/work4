package com.qt.work.goodsinformation.service;

import java.util.HashMap;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qt.work.goodsinformation.mapper.InformationMapper;
import com.qt.work.goodsinformation.model.InformationModel;
import com.qt.work.util.FormatEmpty;

@Service
public class InformationService {
	@Autowired
	private InformationMapper informationMapper;
	public List<InformationModel>select(InformationModel informationModel){
		List<InformationModel>list=informationMapper.select(informationModel);
		if(!FormatEmpty.isEmpty(list)) {
			return list;
		}else {
			return null;
		}
	}
	
	public String insert(InformationModel informationModel) {
		InformationModel im=new InformationModel();
		im.setCode(informationModel.getCode());
		List<InformationModel>list=informationMapper.select(im);
		  if(!FormatEmpty.isEmpty(list)) {
			  return "0";
		  }else if(FormatEmpty.isEmpty(list)){
			  informationMapper.insert(informationModel);
			  return "1";
		  }else {
			  return "2";
		  }
	}
	//分页查询
	public String selectpage(InformationModel informationModel) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("count", informationMapper.selectCount(informationModel));
		map.put("goods", informationMapper.selectAll(informationModel));
		return new JSONObject(map).toString();
		
	}
	//查询商品
	public String select2(InformationModel informationModel) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("goods", informationMapper.select(informationModel));
		return new JSONObject(map).toString();
	}
	public String select3(InformationModel informationModel) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("count", informationMapper.selectCount(informationModel));
		map.put("goods", informationMapper.selectAll(informationModel));
		return new JSONObject(map).toString();
	}
	//删除
	public String delete(InformationModel informationModel) {
		if(informationMapper.delete(informationModel)==1) {
			return "1";
		}else {
			return "0";
		}
	}
	//修改
	public String update(InformationModel informationModel) {
		if(informationMapper.updateActive(informationModel)==1) {
			return "1";
		}else {
			return "0";
		}
	}
}
