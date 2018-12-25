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
  <legend>订单商品</legend>
</fieldset> 
<div class="layui-upload">
		<div class="layui-form-item" >
		<button type="button" class="layui-btn" id="testListAction" style="position: relative;left: 700px;">添加</button>
	    </div>
  <div class="layui-upload-list">
    <table class="layui-table">
      <thead>
        <tr>
        <th style="width: 25%">编号</th>
        <th style="width: 25%">商品</th>
        <th style="width: 20%">数量</th>
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
		url : "/work4/ordergoodsController/select.do?code="+code,
		dataType : 'json',
		type : 'post',
		success : function(data) {
			var html = '';
			var i=1;
			$.each(data.order, function(i, dom) {
				html+='<tr id='+(i+1)+'>';
				html+='<td id='+(i+1)+'height="100px">'+dom.code+'</td>';
				html+='<td id='+(i+1)+'height="100px">'+dom.name+'</td>';
				html+='<td id='+(i+1)+'height="100px">'+dom.number+'</td>';
				var a1='<input type="button" class="layui-btn" value="删除" onclick="javascript:del(\''+dom.id+'\')" /> ';
				html+='<td id='+i+'>'+a1+'</td></tr>';
			});
		    $("#user_tbody").html(html);
		}
	})
}

function del(id){
	if(confirm("确定删除？")){
       $.ajax({
    	   url:"/work4/ordergoodsController/del.do?id="+id,
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
</script>
</body>
</html>