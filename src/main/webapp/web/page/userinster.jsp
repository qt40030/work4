<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/web/page/header.jsp" %>
</head>
<body>
<fieldset class="layui-elem-field" style="margin:20px;padding:20px; ">
<legend>添加用户</legend>
<div class="layui-field-box">
<form class="layui-form layui-form-pane" method="post">
<div class="layui-form-item">
<label class="layui-form-label">账号</label>
      <div class="layui-input-inline">
        <input type="text" name="code" autocomplete="off" class="layui-input" placeholder="请输入账号" lay-verify="required">
      </div>
</div>
<div class="layui-form-item">
<label class="layui-form-label">密码</label>
      <div class="layui-input-inline">
        <input type="password" name="pass" autocomplete="off" class="layui-input" placeholder="请输入密码" lay-verify="required">
      </div>
</div>
<div class="layui-form-item">
<label class="layui-form-label">姓名</label>
      <div class="layui-input-inline">
        <input type="text" name="name" autocomplete="off" class="layui-input" placeholder="请输入姓名" lay-verify="required">
      </div>
</div>
<div class="layui-form-item">
    <div class="layui-input-inline">
      <input value="注册" type="button" class="layui-btn" lay-submit lay-filter="reg"/>
      <input value="重置" type="reset" class="layui-btn layui-btn-primary" >
    </div>
 </div>
    <input type="hidden" name="action" value="reg">
</form>
</div>
</fieldset>
<script type="text/javascript">
$(function(){
	$("#login").click(toLog)
})
function toLog() {
	location.href="/work4/web/login.jsp"
}
var form=layui.form;
form.on('submit(reg)', function(data){
$.ajax({
	url:"/work4/userController/register.do",
	data:data.field,
	dataType:'text',
	type:'post',
	success:function(data){
		if(data==1){
			alert('注册成功');
			var index = parent.layer.getFrameIndex(window.name); //得到当前iframe层的索引
			parent.layer.close(index);
		}else if(data==0){
			layer.msg('账号已存在');
		}else{
			layer.msg('注册失败');
		}
	}
})
});
</script>
</body>
</html>