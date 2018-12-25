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
<fieldset class="layui-elem-field" style="margin: 100px auto;padding:20px;width: 339px;">
<legend>信息维护</legend>
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
        <input type="text" name="pass" autocomplete="off" class="layui-input" placeholder="请输入新密码" lay-verify="required">
      </div>
</div>
<div class="layui-form-item">
    <div class="layui-input-inline">
      <input value="修改" type="button" class="layui-btn" lay-submit lay-filter="upd"/>
    </div>
    <input value="返回" type="button" class="layui-btn" id="login">
 </div>
 <input type="hidden" name="action" value="update">
</form>
</div>
</fieldset>
<script type="text/javascript">
init()
function init() {
	var code='<%=request.getParameter("code")%>'
		$.ajax({
			url:"/work4/userController/select2.do",
			data:{action:'searchUser',code:code},
			dataType:'json',
			type:'post',
			success:function(data){
			$("input[name='code']").val(data.code);
			$("input[name='code']").prop("readonly","readonly");
			}
		})
}
form.on('submit(upd)',function(data){
	$.ajax({
		url:"/work4/userController/update.do",
		data:data.field,
		dataType:'text',
		type:'post',
		success:function(data){
			if(data==0){
				alert('修改成功');
				var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
				parent.layer.close(index);
			}else{
				layer.msg('修改失败');
			}
		}
	})
});
</script>
</body>
</html>