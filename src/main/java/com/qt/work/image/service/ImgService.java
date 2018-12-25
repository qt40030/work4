package com.qt.work.image.service;

import java.util.HashMap;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.qt.work.image.mapper.ImgMapper;
import com.qt.work.image.model.ImgModel;

@Service
public class ImgService {
	@Autowired
	private ImgMapper imgMapper;
	
	public String insert(ImgModel imgModel) {
         imgMapper.insert(imgModel);
		return "1";
	}
	//遍历图片
	public String selete(ImgModel imgModel) {
		HashMap<String,Object>map=new HashMap<>();
		map.put("img",imgMapper.selectAll(imgModel) );
		return new JSONObject(map).toString();
	}
	//删除图片
	public String del(ImgModel imgModel) {
		if(imgMapper.delete(imgModel)==1) {
			return "1";
		}else {
			return "0";
		}
	}
	public String update(ImgModel imgModel) {
		List<ImgModel>list=imgMapper.selectAll(imgModel);
		imgModel.setCode(list.get(0).getCode());
		imgModel.setType("2");
		imgMapper.update(imgModel);
		imgModel.setType("1");
		imgMapper.updateActive(imgModel);
		return "1";
	}
}
