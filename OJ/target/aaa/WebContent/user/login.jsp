<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="jquery,注册" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<link rel="stylesheet" type="text/css" href="css/login register.css" />
<script src="https://cdn.bootcss.com/jquery/1.12.1/jquery.min.js"></script>
<script src="js/main.js"></script>
<title>Insert title here</title>
<head>
<style type="text/css">
	.i-password{
		position:absolute;
		float:left;
		top:60px;
	}
</style>
</head>

<body>
	<div class="login" style="text-align:center;">
		<form method="post" action="login.do">
		<div style="height:50px;">
			<div style="float:left;margin-left:10%;">
				<img src="images/user.jpg" style="height:20px;margin-top:3px;margin-right:5px;margin-left:0px;">
			</div>
			<input class="input-style" id="signin-username" name="studentname" value="${student.studentname }" type="text" placeholder="输入用户名" style="width:60%;height:25px;border-radius:4px;float:left;">
			<!-- 提示信息 -->
			<span id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;float:left;margin-left:16%;">${errorMsg }</span>
		</div>
		
		<div style="height:50px;" >
			<div class="i-password" style="border:5px;margin-left:9%;">
				<img src="images/password1.jpg" style="height:20px;margin-top:0px;width:20px;margin-right:5px;">
			</div>
			<input class="input-style" id="signin-password" name="password" value="${student.password }" type="password" placeholder="输入密码" style="width:60%;height:25px;border-radius:4px;margin-left:4px;margin-right:8%;">
			<!-- 提示信息 -->
			<span id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;float:left;margin-left:16%;"></span>
		</div>
		
		<div style="height:50px;">
			<div style="float:left;margin-left:10.5%;">
				<img src="images/yanzhengma.png" style="height:20px;margin-right:5px;float:left;">
			</div>
			<input class="input-style" id="signin-yanzheng" name="verification" type="text" placeholder="验证码" style="width:40%;height:25px;border-radius:4px;float:left;">
			<img src="verification.jsp" height="27px" style=";float:left;" onclick = "this.src='verification.jsp?'+Math.random()"/>
			<!-- 提示信息 -->
			<span id="tishi" type="text" placeholder="提示信息" style="width:40%;height:20px;margin-left:16%;float:left;">${error}</span>
		</div>
		<div>
			<button id="login-btn" 
				type="submit" class="ant-btn ant-btn-primary" 
				style="margin-top:5px;width:68%;margin-right:10%;"
				onclick="tologin()"
				>
				<span>登录</span>
			</button>
		</div>
		<div>
			<script>
				layui.use('layer', function(){});
			</script>
	  		<script>

			  function toregister(){
				  	parent.layer.closeAll();
				    parent.layer.open({
				    type: 2,
				    title: '请注册',
				    shadeClose: true,
				     shade: 0.8,
				    area: ['500px', '60%'],//宽 高
				    content: 'register.jsp' //弹窗iframe的url
					});
				}
			  function tologin(){
				  parent.layer.closeAll();
				  window.location.reload(true); 
			  }
			</script>
			 <div onclick="toregister()" style="width:68%">
			  	 <a>注册帐号</a>
			  	 <a href="#" style="float:right;">忘记密码</a>
			  </div>
		
			 
		</div>	
		</form>	
	</div>
</body>
</html>