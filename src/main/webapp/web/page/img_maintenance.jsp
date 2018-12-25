<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/web/page/header.jsp" %>
 <script type="text/javascript" src="/work4/web/common/js/common.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>商品图片维护</legend>
</fieldset> 
<div class="layui-upload">
  <div class="layui-upload-list">
    <table class="layui-table">
      <thead>
        <tr>
        <th>序号</th>
        <th>商品名</th>
        <th>图片信息</th>
        <th>操作</th>
      </tr></thead>
      <tbody id="user_tbody"></tbody>
    </table>
  </div>
</div> 
<script type="text/javascript">
init()
function init() {
	 var code='<%=request.getParameter("code")%>'
	$.ajax({
		url : "/work4/imgController/selete.do?code="+code,
		dataType : 'json',
		type : 'post',
		success : function(data) {
			var html = '';
			var i=1;
			$.each(data.img, function(i, dom) {
				html+='<tr id='+(i+1)+'>';
				html+='<td id='+(i+1)+'>'+(i+1)+'</td>';
				html+='<td id='+(i+1)+'height="100px">'+dom.name+'</td>';
				'<img src="'+dom.url+'"/>'
				html+='<td id='+(i+1)+'><img src="/image/'+dom.url+'"></td>';
				var a1='<input type="button" class="layui-btn" value="删除" onclick="javascript:del(\''+dom.url+'\')" /> ';
				a1+='<input type="button" class="layui-btn" value="设置主图" onclick="update(\''+dom.url+'\')" /> ';
				html+='<td id='+i+'>'+a1+'</td></tr>';
			});
		    $("#user_tbody").html(html);
		}
	})
}

function del(url){
	if(confirm("确定删除？")){
       $.ajax({
    	   url:"/work4/imgController/del.do?url="+url,
    		dataType:'text',
    		type:'post',
    		success:function(data){
    			if(data==1){
    				alert("删除成功")
    				window.location.reload();
    			}else{
    				alert("删除失败")
    			}
    		}
       })
    }
}
function update(url){
       $.ajax({
    	   url:"/work4/imgController/update.do?url="+url,
    		dataType:'text',
    		type:'post',
    		success:function(data){
    			if(data==1){
    				alert("设置成功")
    				window.location.reload();
    			}else{
    				alert("设置失败")
    			}
    		}
       })
}
</script>
</body>
</html>