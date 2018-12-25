<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/web/page/header.jsp" %>
<script src="/work4/web/common/layui/layui.js"></script>

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">你要干啥</div>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="/work4/web/common/img/vbv.jpg" class="layui-nav-img">
             ${username}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="javascript:usname()">修改资料</a></dd>
          <dd><a href="javascript:uspas()">修改密码</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="javascript:goLogout()">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">商品维护</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:openUrl('goods1.jsp');">商品分类维护</a></dd>
            <dd><a href="javascript:openUrl('goodsinformation.jsp');">商品信息维护</a></dd>
            <dd><a href="javascript:openUrl('order_information.jsp');">订单信息维护</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">用户信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:openUrl('userindex.jsp');">用户信息维护</a></dd>
<!--             <dd><a href="javascript:;">管理员信息维护</a></dd> -->
          </dl>
        </li>
<!--         <li class="layui-nav-item"><a href="javascript:;">404</a></li> -->
<!--         <li class="layui-nav-item"><a href="javascript:;">404</a></li> -->
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
   <iframe name="rightframe" width="100%" height="100%"  src="/work4/web/page/order_information.jsp"></iframe>
<!--   <div class="layui-footer"> -->
<!--     底部固定区域 -->
<!--     © layui.com - 底部固定区域 -->
  </div>
</div>
<script>
function openUrl(url) {
	window.open(url,"rightframe")
}

//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
});
layui.use('layer',function(){
	var layer=layui.layer;
});

function usname() {
	layer.open({
		type:2,
		shadeClose:true,
		area:['800px','500px'],
		maxmin:true,
		end:function(){window.location.reload()},
		content:'/work4/web/page/userupdate.jsp?code=${usercode}'
	});
}
function uspas() {
	layer.open({
		type:2,
		shadeClose:true,
		area:['800px','500px'],
		maxmin:true,
		end:function(){window.location.reload()},
		content:'/work4/web/page/userpassupdate.jsp?code=${usercode}'
	});
}
function goLogout() {
		$.ajax({
			url:"/work4/userController/logout.do",
			dataType:'text',
			type:'post',
			success:function(data){
				location.assign(location) 
			}
		})
}
</script>
</body>
</html>