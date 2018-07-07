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
<body class="childrenBody" style="padding-bottom:50px">




<!-- 1.需要修改div的name、ajax
	 2.注意form表单请求与题目id -->



	<div class="register" style="margin-left:22%;width:60%">
	<div style="font-size: 25px;margin: 30px 0 20px -10%;text-align: center;">添加题目</div>
		<form method="post" action="insertTopic.do" enctype="multipart/form-data">
		
		<div>
			<p class="admin-regist-lable">题目名称</p>
			<input class="input-style" name="title" value="${topic.title }" id="userName" type="text" placeholder="题目名称" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">题目描述</p>
			<input class="input-style" name="description" value="${topic.description }" id="nickName" type="text" placeholder="题目描述" >
			<!-- 提示信息 --><p id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">难度</p>
			<input class="input-style" name="dificulty" value="${topic.dificulty }" id="passWord" type="text" placeholder="难度" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">作者</p>
			<input class="input-style" name="author" value="${topic.author }" id="passWord" type="text" placeholder="作者" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">内存要求</p>
			<input class="input-style" name="memoryLimit" value="${topic.memoryLimit }" id="newpassWord" type="text" placeholder="内存要求" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息">${newPassword1 }</p>
		</div>
		<div>
			<p class="admin-regist-lable">时间要求</p>
			<input class="input-style" name="timeLimit" value="${topic.timeLimit }" id="telephone" type="text" placeholder="时间要求" >
			<!-- 提示信息 --><p id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">输入要求</p>
			<input class="input-style" name="input" value="${topic.input }" id="userName" type="text" placeholder="输入要求" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">输入示例</p>
			<input class="input-style" name="sampleInput" value="${topic.sampleInput }" id="userName" type="text" placeholder="输入示例" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">输出要求</p>
			<input class="input-style" name="output" value="${topic.output }" id="userName" type="text" placeholder="输出要求" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">输出示例</p>
			<input class="input-style" name="sampleOutput" value="${topic.sampleOutput }" id="userName" type="text" placeholder="输出示例" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">上传文件</p>
			<input name="file" type="file" style="margin-top: 27px;">
		</div>
			 
		<div class="fieldset">
			<button id="login-btn" type="submit" class="admin-regist-submit-btn">
				<p style="color:none">确认添加</p>
			</button>
		</div>
		</form>	
		
		
	</div>

	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="addUser.js"></script>
</body>
</html>