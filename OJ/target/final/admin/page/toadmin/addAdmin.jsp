<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>修改管理员信息</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
<link rel="stylesheet" href="../../css/user.css" media="all" />
</head>
<body class="childrenBody" style="margin-left: 20%">
	<form action="addAdmin.do">
		<div class="user_left">
			<div class="layui-form-item">
				<label class="layui-form-label">用户名</label>
				<div class="layui-input-block">
					<input type="text" value="${admin.adminname }" name="adminname" placeholder="输入真实姓名" id="userName"
						class="layui-input">
				    <p id="tishi" type="text" placeholder="提示信息" style="margin-top:10px"></p>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">密码</label>
				<div class="layui-input-block">
					<input type="password" value="${admin.password }" name="password" placeholder="输入新密码"
						lay-verify="required|newPwd" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">确认密码</label>
				<div class="layui-input-block">
					<input type="password" value="" name="newpassword" placeholder="再次输入密码"
						lay-verify="required|confirmPwd" class="layui-input">
					<p id="tishi" type="text" placeholder="提示信息" style="color:red;margin-top:10px">${error}</p>
				</div>
			</div>
		</div>
		<div class="layui-form-item" style="margin-left: 5%;">
			<div class="layui-input-block">
				<button type="submit" style="border:0px"><p style="padding: 7px 15px;background: #039c8e;color: white;">立即提交</p></button>			
			</div>
		</div>

	</form>
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="address.js"></script>
	<script type="text/javascript" src="changeSelf.js"></script>
	<script type="text/javascript" src="../../js/jquery-1.7.2.js"></script>
	<script type="text/javascript">
		console.log($("#userName"));
		$("#userName").blur(
				function() {
					$.ajax({
						type : "get",
						url : "verifyName.do",
						async : true,
						dataType : 'text',
						data : {
							name : $('#userName')[0].value,
						},
						success : function(data) {
							console.log(data);
							if (data == "true") {
								$('#userName').next().html("用户名可用").css(
										'color', '#10ea10');
							}
							if (data == "false1") {
								$('#userName').next().css('color', 'red');
								$('#userName').next().html("用户名不能为空");
								$('#userName')[0].focus();
							}
							if (data == "false") {
								$('#userName').next().css('color', 'red');
								$('#userName').next().html("用户名已存在");
								$('#userName')[0].focus();
							}
						},
						error : function(XMLHttpRequest, textStatus,
								errorThrown) {
							layer.alert('未知异常');
						}
					});
				})
	</script>
</body>
</html>