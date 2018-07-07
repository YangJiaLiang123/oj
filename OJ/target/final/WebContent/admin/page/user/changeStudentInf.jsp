<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	
	<link rel="stylesheet" href="../../css/adminchangeandregist.css" media="all" />
	
	<style type="text/css">
		.layui-form-item .layui-inline{ width:33.333%; float:left; margin-left:20%; }
		@media(max-width:1240px){
			.layui-form-item .layui-inline{ width:100%; float:none; }
		}
	</style>
</head>
<body class="childrenBody">

	<div class="register" style="margin-left:22%;width:60%">
	<div style="font-size: 25px;margin: 30px 0 20px -10%;text-align: center;">修改学生信息</div>
		<form method="post" action="changeStudentInf.do?id=${student.id }">	
		<div>
			<p class="admin-regist-lable">用户名</p>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="输入用户名" >
			<!-- 提示信息 --><p  id="tishi" ></p>
		</div>
		<div>
			<p class="admin-regist-lable">昵称</p>
			<input class="input-style" name="nickname" value="${student.nickname }" id="nickName" type="text" placeholder="昵称" >
			<!-- 提示信息 --><p id="tishi" ></p>
		</div>
		<div>
			<p class="admin-regist-lable">原密码</p>
			<input class="input-style" name="password" value="${student.password }" type="password" placeholder="密码(8-16位数字和字母组成)" >
			<!-- 提示信息 --><p  id="tishi" ></p>
		</div>
		<div>
			<p class="admin-regist-lable">新密码</p>
			<input class="input-style" name="word" value="" id="passWord" type="password" placeholder="密码(8-16位数字和字母组成)" >
			<!-- 提示信息 --><p  id="tishi" ></p>
		</div>
		<div>
			<p class="admin-regist-lable">重复新密码</p>
			<input class="input-style" name="newPassword" value="${newPassword }" id="newpassWord" type="password" placeholder="确认密码" >
			<!-- 提示信息 --><p  id="tishi" >${newPassword1 }</p>
		</div>
		<div>
			<p class="admin-regist-lable">电话</p>
			<input class="input-style" name="telephone" value="${student.telephone }" id="telephone" type="text" placeholder="手机号" >
			<!-- 提示信息 --><p id="tishi" ></p>
		</div>
		<div>
			<p class="admin-regist-lable">邮箱</p>
			<input class="input-style" name="email" value="${student.email }" id="email" type="text" placeholder="邮箱" >
			<!-- 提示信息 --><p id="tishi" ></p>
		</div>
		<div class="shenfen" style="display:none">
			学生注册<input name="type" type="radio" value="1" checked="true">
			<span id="tishi" >${type }</span>
		</div>
		
		<div class="fieldset">
			<button id="login-btn" type="submit" class="admin-regist-submit-btn">
				<span style="color:none">确认修改</span>
			</button>
			${success}
		</div>
		</form>	
	</div>
	 <script type="text/javascript" src="../../js/jquery-1.7.2.js"></script>
     <script type="text/javascript" src="../../js/userbiaodanyanzheng.js"></script>


	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="addUser.js"></script>
</body>
</html>