<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/web/page/header.jsp"%>
<script type="text/javascript" src="/work4/web/common/js/common.js"></script>
</head>
<body>
	<fieldset class="layui-elem-field"
		style="margin: 0 auto; padding-top: 10px; padding-bottom: 10px; width: 600px; opacity: 90%; height: 387px;">
		<legend>商品分类</legend>
		<form class="layui-form" method="post">
			<div class="layui-form-item">
				<label class="layui-form-label">选择分类</label>
				<div class="layui-input-inline">
					<select name="parentcode">
						<option value="">请选择分类</option>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">输入编号</label>
				<div class="layui-input-inline">
					<input type="text" name="code" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">输入名称</label>
				<div class="layui-input-inline">
					<input type="text" name="name" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">输入描述</label>
				<div class="layui-input-inline">
					<textarea name="descr" placeholder="请输入内容" class="layui-textarea"
						style="width: 470px;"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="button" class="layui-btn" lay-submit
						lay-filter="updater" value="确定"
						style="width: 140px; position: absolute; left: 300px; top: 30px;">
				</div>
			</div>
		</form>
	</fieldset>
	<script type="text/javascript">
	init()
	function init() {
		var code='<%=request.getParameter("code")%>'
			$.ajax({
				url:"/work4/goodsController/select2.do",
				data:{action:'searchUser',code:code},
				dataType:'json',
				type:'post',
				success:function(data){
				$("input[name='code']").val(data.code);
				$("input[name='name']").val(data.name);
				$("textarea[name='descr']").text(data.descr);
				$("input[name='code']").prop("readonly","readonly");
				
				$.ajax({
					url : "/work4/goodsController/goods2.do",
					dataType : 'json',
					type : 'post',
					success : function(data) {
						var html = '<option value="x">无上级</option>';
						$.each(data.goods, function(i, dom) {
							html += '<option value="' + dom.code + '">' + dom.name
									+ '</option>'
						});
						$("select[name='parentcode']").html(html);
//							$({"option[value='"+${parentcode}+"']"}).prop("selected","selected");
						form.render("select");
					}
				})
				}
			})
	}
	form.on('submit(updater)', function(data) {
			$.ajax({
				url : "/work4/goodsController/update.do",
				data : data.field,
				dataType : 'text',
				type : 'post',
				success : function(data) {
					
					if (data == 1) {
						alert('修改成功');
						var index = parent.layer.getFrameIndex(window.name); //得到当前iframe层的索引
						parent.layer.close(index);
					} else {
						layer.msg('修改失败');
					}
				}
			})
		});

		
		

	</script>
</html>