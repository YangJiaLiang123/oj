<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>修改密码</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/user.css" media="all" />
	<style>
		.changeself-tishi{
		    margin-left: 5%;
	    float: left;
	    color: red;
	    padding-top: 2%;
	    font-size: 15px;
    }	
	</style>
</head>
<body class="childrenBody">
	<form class="layui-form changePwd" action="updatePassword.do">
		
		<div class="layui-form-item">
		    <label class="layui-form-label">用户名</label>
		    <div class="layui-input-block">
		    	<input type="text" name="adminname" value="${sessionScope.admin.adminname }" disabled class="layui-input layui-disabled">
		    </div>
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label">旧密码</label>
		    <div class="layui-input-block">
		    	<input type="password" value="${password }" name="password" placeholder="请输入旧密码" lay-verify="" class="layui-input">
		         <div class="changeself-tishi">${error}</div>
		    </div>
		   
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label">新密码</label>
		    <div class="layui-input-block">
		    	<input type="password" value="${newpassword }" name="newpassword" placeholder="请输入新密码" lay-verify="" id="oldPwd" class="layui-input pwd">
		    </div>
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label">确认密码</label>
		    <div class="layui-input-block">
		    	<input type="password" value="${newpassword1 }" name="newpassword1" placeholder="请确认密码" lay-verify="" class="layui-input pwd">
		        <div class="changeself-tishi">${error1}</div>
		    </div>
		    
		</div>
		<div class="layui-form-item">
		    <div class="layui-input-block">
		    	<button class="layui-btn" lay-submit="" lay-filter="" type="submit">立即修改</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>				
		    </div>
		    ${success}
		</div>
	</form>
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="address.js"></script>
	<script type="text/javascript" src="user.js"></script>
</body>
</html>