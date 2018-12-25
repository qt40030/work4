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
	<div class="layui-collapse">
		<div class="layui-colla-item">
			<h2 class="layui-colla-title">订单信息维护</h2>
			<div class="layui-colla-content layui-show">
				<fieldset>
					<legend>订单信息-查询条件</legend>
					<form class="layui-form layui-form-pane" method="post">
						<div class="layui-form-item">
							<label class="layui-form-label">类型编号</label>
							<div class="layui-input-inline">
								<input type="text" name="code"
									 placeholder="类型编号" autocomplete="off"
									class="layui-input">
							</div>
							<label class="layui-form-label">类别名称</label>
					<div class="layui-input-inline">
						<input type="text" name="name" 
							 placeholder="请输入类别名称"
							autocomplete="off" class="layui-input">
					</div>
					<input class="layui-btn" type="button" name="select" lay-submit lay-filter="select"
							value="查询">
				 <input type="button"  
							class="layui-btn layui-btn-primary" value="添加" onclick="inst()">
						</div>
						<input type="hidden" name="action" value="list">
						<input type="hidden" name="pageIndex" value="1" >
						<input type="hidden" name="pageLimit" value="10">
					</form>
				</fieldset>
			</div>
		</div>
	</div>
	<table class="layui-table">
		<thead>
			<tr>
				<td>序号</td>
				<td>编号</td>
				<td>用户</td>
				<td>时间</td>
				<td>地址</td>
				<td>状态</td>
				<td style="width:25%;">操作</td>
			</tr>
		</thead>
		<tbody id="user_tbody"></tbody>
	</table>
	<div id="pageInfoUser"></div>
	<script type="text/javascript">
	function update(code) {
		layer.open({
			type:2,
			shadeClose:true,
			area:['800px','500px'],
			maxmin:true,
			end:function(){window.location.reload()},
 			content:'/work4/web/page/order_goods.jsp?code='+code
		});
	}
	
	function del(code){
		if(confirm("确定删除？")){
	       $.ajax({
	    	   url:"/work4/orderController/del.do?code="+code,
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
	
	formSubmit('/work4/orderController/selectpage.do','submit(select)','json',function(data){
		var laypage = layui.laypage;
		var curr=$("input[name='pageIndex']").val();
	    var limit=$("input[name='pageLimit']").val();
		setPageInfo('pageInfoUser',data.count,curr,limit,function(obj,first){
			  $("input[name='pageIndex']").val(obj.curr);
			      $("input[name='pageLimit']").val(obj.limit);
			      if(!first){
			      refresh();}
			    })
			  var html="";
		      $("#user_tbody").empty();
			    $.each(data.order,function(i,dom){
						html+='<tr id='+(i+1+(curr-1)*limit)+'>';
						html+='<td id='+(i+1+(curr-1)*limit)+'>'+(i+1+(curr-1)*limit)+'</td>';
						html+='<td id='+(i+1+(curr-1)*limit)+'>'+dom.code+'</td>';
						html+='<td id='+(i+1+(curr-1)*limit)+'>'+dom.user+'</td>';
						html+='<td id='+(i+1+(curr-1)*limit)+'>'+dom.time+'</td>';
						html+='<td id='+(i+1+(curr-1)*limit)+'>'+dom.address+'</td>';
						html+='<td id='+(i+1+(curr-1)*limit)+'>'+dom.state+'</td>';
						var a1='<input type="button" class="layui-btn" value="删除" onclick="javascript:del(\''+dom.code+'\')" /> ';
						a1+='<input type="button" class="layui-btn" value="修改" onclick="update(\''+dom.code+'\')" /> ';
						a1+='<input type="button" class="layui-btn" value="订单商品" onclick="update(\''+dom.code+'\')" /> ';
						html+='<td id='+i+'>'+a1+'</td></tr>';
			    });
			    $("#user_tbody").html(html);
			})
	refresh();
	function refresh(){
			$("input[name='select']").click();
		}
	
	layui.use('layer',function(){
		var layer=layui.layer;
	});
	function inst() {
		layer.open({
			type:2,
			shadeClose:true,
			area:['800px','500px'],
			maxmin:true,
			end:function(){window.location.reload()},
			content:'/work4/web/page/goodsinster.jsp'
		});
	}
	</script>
</body>
</html>