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
<fieldset class="layui-elem-field"
		style="margin: 160px auto;padding:20px;width: 390px;">
<legend>登录</legend>
<div>
<form class="layui-form" action="">
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
<label class="layui-form-label">验证码</label>
      <div class="layui-input-inline">
        <input type="text" name="authCode" autocomplete="off" class="layui-input" placeholder="请输入验证码" lay-verify="required">
      <img src="/work4/CodeServlet" onclick="this.src='/work4/CodeServlet?'+Math.random();"/>
      </div>
</div>
<div class="layui-form-item">
    <div class="layui-input-inline">
      <input value="登录" type="button" class="layui-btn" lay-submit lay-filter="login"/>
      <input value="重置" type="reset" class="layui-btn layui-btn-primary" >
    </div>
        <input value="注册" type="button" class="layui-btn" id="register">
</div>
  <input type="hidden" name="action" value="login">
</form>
</div>
</fieldset>
<script type="text/javascript">
$(function(){
	$("#register").click(toReg)
})
function toReg() {
	location.href="/work4/web/register.jsp"
}
var form=layui.form;
form.on('submit(login)', function(data){
$.ajax({
	url:"/work4/userController/login.do",
	data:data.field,
	dataType:'text',
	type:'post',
	success:function(data){
		if(data==0){
			location.href="/work4/web/page/index.jsp"
		}else if(data==1){
			location.href="/work4/web/store/index.jsp"
		}else if(data==2){
			layer.msg('账号或密码错误');
		}
		else if(data==3){
			layer.msg('验证码错误');
		}
	}
})
});
</script>
</body>
</html>