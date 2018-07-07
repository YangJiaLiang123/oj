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
	 2.标签中添加对应信息
	 3.注意form表单请求与题目id -->



	<div class="register" style="margin-left:22%;width:60%">
	<div style="font-size: 25px;margin: 30px 0 20px -10%;text-align: center;">修改题目信息</div>
		<form method="post" action="register.do">
		
		<div>
			<p class="admin-regist-lable">题目名称</p>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="题目名称" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">题目描述</p>
			<input class="input-style" name="nickname" value="${student.nickname }" id="nickName" type="text" placeholder="题目描述" >
			<!-- 提示信息 --><span id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">难度</p>
			<input class="input-style" name="password" value="${student.password }" id="passWord" type="password" placeholder="难度(下拉菜单？)" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">作者</p>
			<input class="input-style" name="password" value="${student.password }" id="passWord" type="password" placeholder="作者" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">内存要求</p>
			<input class="input-style" name="newPassword" value="${newPassword }" id="newpassWord" type="password" placeholder="内存要求" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息">${newPassword1 }</span>
		</div>
		<div>
			<p class="admin-regist-lable">时间要求</p>
			<input class="input-style" name="telephone" value="${student.telephone }" id="telephone" type="text" placeholder="时间要求" >
			<!-- 提示信息 --><span id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">输入要求</p>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="输入要求" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">输入示例</p>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="输入示例" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">输出要求</p>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="输出要求" >
			<!-- 提示信息 --><span  id="tishi" type="text" placeholder="提示信息"></span>
		</div>
		<div>
			<p class="admin-regist-lable">输出示例</p>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="输出示例" >
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
	 <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
        <script >
        console.log($("#nickName"));
    	$("#nickName").blur(function(){
    	    $.ajax({
    	        type:"get",
    	        url:"NickName.do",
    	        async:true,
    	        dataType: 'text',
    	        data:{
    	          name:$('#nickName')[0].value,
    	        },success : function(data){
    	        	console.log(data);
    	          if(data=="true"){
    		          $('#nickName').next().html("该昵称可用");
    	          }
    	          if(data=="false1"){
    		          $('#nickName').next().html("昵称不能为空");
    		          $('#nickName')[0].focus();
    	          }
    	          if(data=="false"){
    		          $('#nickName').next().html("该昵称已存在");
    		          $('#nickName')[0].focus();
    	          }
    	        },error:function(XMLHttpRequest, textStatus, errorThrown){  
    	        	layer.alert('未知异常');
    	   	  	}
    	    });
    	})
        </script>
	    <script>	
			console.log($("#userName"));
			$("#userName").blur(function(){
			    $.ajax({
			        type:"get",
			        url:"verifyName.do",
			        async:true,
			        dataType: 'text',
			        data:{
			          name:$('#userName')[0].value,
			        },success : function(data){
			        	console.log(data);
			          if(data=="true"){
				          $('#userName').next().html("用户名可用");
			          }
			          if(data=="false1"){
				          $('#userName').next().html("用户名不能为空");
				          $('#userName')[0].focus();
			          }
			          if(data=="false"){
				          $('#userName').next().html("该用户名已存在");
				          $('#userName')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
	   </script>

       <script>	
			console.log($("#passWord"));
			$("#passWord").blur(function(){
			    $.ajax({
			        type:"get",
			        url:"passWord.do",
			        async:true,
			        dataType: 'text',
			        data:{
			          name:$('#passWord')[0].value,
			        },success : function(data){
			        	console.log(data);
			          if(data=="true"){
				          $('#passWord').next().html("");
			          }
			          if(data=="false1"){
				          $('#passWord').next().html("密码不能为空");
				          $('#passWord')[0].focus();
			          }
			          if(data=="false"){
				          $('#passWord').next().html("密码格式不正确");
				          $('#passWord')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
	   </script>
	   <script>	
			console.log($("#email"));
			$("#email").blur(function(){
			    $.ajax({
			        type:"get",
			        url:"email.do",
			        async:true,
			        dataType: 'text',
			        data:{
			          name:$('#email')[0].value,
			        },success : function(data){
			        	console.log(data);
			          if(data=="true"){
				          $('#email').next().html("该邮箱可用");
			          }
			          if(data=="false1"){
				          $('#email').next().html("邮箱不能为空");
				          $('#email')[0].focus();
			          }
			          if(data=="false2"){
				          $('#email').next().html("该邮箱已存在");
				          $('#email')[0].focus();
			          }
			          if(data=="false"){
				          $('#email').next().html("邮箱不正确");
				          $('#email')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
	   </script>
	   <script>	
			console.log($("#telephone"));
			$("#telephone").blur(function(){
			    $.ajax({
			        type:"get",
			        url:"telephone.do",
			        async:true,
			        dataType: 'text',
			        data:{
			          name:$('#telephone')[0].value,
			        },success : function(data){
			        	console.log(data);
			          if(data=="true"){
				          $('#telephone').next().html("该号码可用");
			          }
			          if(data=="false1"){
				          $('#telephone').next().html("手机号不能为空");
				          $('#telephone')[0].focus();
			          }
			          if(data=="false"){
				          $('#telephone').next().html("手机号无效");
				          $('#telephone')[0].focus();
			          }
			          if(data=="false2"){
				          $('#telephone').next().html("手机号已被使用");
				          $('#telephone')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
	   </script>



	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="addUser.js"></script>
</body>
</html>