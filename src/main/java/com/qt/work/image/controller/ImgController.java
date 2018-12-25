package com.qt.work.image.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.qt.work.image.model.ImgModel;
import com.qt.work.image.service.ImgService;

import net.sf.json.JSONObject;
@Controller
@RequestMapping("imgController")
public class ImgController {
	@Autowired
	private ImgService imgService;
private String PATH="F:/image/";
@RequestMapping("insert")
@ResponseBody
public String insert(HttpServletRequest request, String code) throws IllegalStateException, IOException {
    // 将当前上下文初始化给 CommonsMutipartResolver （多部分解析器）
    CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
            request.getSession().getServletContext());
    // 检查form中是否有enctype="multipart/form-data"
    if (multipartResolver.isMultipart(request)) {
        // 将request变成多部分request
        MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
        // 获取multiRequest 中所有的文件名
        Iterator<String> iter = multiRequest.getFileNames();
        // 一次遍历所有文件
        while (iter.hasNext()) {
            MultipartFile file = multiRequest.getFile(iter.next().toString());
            if (file != null) {
                String filename = file.getOriginalFilename();
                String saveName = UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
                String path = PATH + saveName;
                file.transferTo(new File(path));// 上传
                ImgModel im=new ImgModel();
                im.setCode(code);
                im.setUrl(saveName);
                im.setType("2");
                imgService.insert(im);
            }
        }
    }
    Map<String, String> result = new HashMap<>();
    result.put("code", "0");
    return JSONObject.fromObject(result).toString();
}

@RequestMapping(value="/selete",produces="application/json;charset=UTF-8")
@ResponseBody
public String selete(ImgModel imgModel,Model model) {
	return imgService.selete(imgModel);
}
//删
@RequestMapping("del")
@ResponseBody
public String del(ImgModel imgModel,Model model) {
	return imgService.del(imgModel);
}
@RequestMapping("update")
@ResponseBody
public String update(ImgModel imgModel,Model model) {
	return imgService.update(imgModel);
}
}
