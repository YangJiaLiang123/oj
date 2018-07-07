<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	 .admin-regist-lable{
		width: 80px;
    	float: left;
    	padding-top: 30px;
    	font-size: 15px;
	}
	.input-style{
		padding-left:10px;
		width: 80%;
    	margin-top: 20px;
		height: 38px;
		line-height: 38px;
		border: 1px solid #e6e6e6;
		background-color: #fff;
		border-radius: 2px;
	}
	.admin-regist-submit-btn{
	    height: 38px;
	    line-height: 38px;
	    padding: 0 28px;
	    background-color: #1AA094;
	    color: #fff;
	    border: none;
	    opacity: .9;
	    margin: 25px 0 0 80px;
	}
	#tishi{
		margin-left: 20px;
	    color: red;
	    font-size: 20px;
	}
</style>
	<meta charset="utf-8">
	<title></title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	<style type="text/css">
		.layui-form-item .layui-inline{ width:33.333%; float:left; margin-left:20%; }
		@media(max-width:1240px){
			.layui-form-item .layui-inline{ width:100%; float:none; }
		}
	</style>
</head>
<body class="childrenBody">




<!-- 1.需要修改div的name、ajax
	 2.注意form表单请求与题目id -->



	<div class="register" style="margin-left:22%;width:60%">
	<div style="font-size: 25px;margin: 30px 0 20px -10%;text-align: center;">添加比赛</div>
		<form method="post" action="register.do">
		<div>
			<p class="admin-regist-lable">比赛名称</p>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="比赛名称" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">比赛描述</p>
			<input class="input-style" name="nickname" value="${student.nickname }" id="nickName" type="text" placeholder="比赛描述" >
			<!-- 提示信息 --><span id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">难度</p>
			<input class="input-style" name="password" value="${student.password }" id="passWord" type="password" placeholder="难度(下拉菜单？)" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">举办方</p>
			<input class="input-style" name="password" value="${student.password }" id="passWord" type="password" placeholder="举办方" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">时间</p>
			<input class="input-style" name="newPassword" value="${newPassword }" id="newpassWord" type="password" placeholder="时间" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息">${newPassword1 }</span>
		</div>
		<div>
			<p class="admin-regist-lable">时长</p>
			<input class="input-style" name="telephone" value="${student.telephone }" id="telephone" type="text" placeholder="时长" >
			<!-- 提示信息 --><span id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">题目</p>
			<input class="input-style" disabled type="text" value="添加成功后在比赛列表中点击比赛列表添加题目" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>

		
		
		<div class="fieldset">
			<button id="login-btn" type="submit" class="admin-regist-submit-btn">
				<span style="color:none">确认修改</span>
			</button>
			<span id="tishi" type="text" placeholder="提示信息">${register }</span>
		</div>
		</form>	
		
		
	</div>
	
	
	


	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="addUser.js"></script>
</body>
</html>