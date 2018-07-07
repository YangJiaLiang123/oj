<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>添加学生用户</title>
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
	<div style="font-size: 25px;margin: 30px 0 20px -10%;text-align: center;">添加教师</div>
	<div class="register" style="margin-left:22%;width:60%">
		<form method="post" action="addTeacher.do">
		
		<div>
			<p class="admin-regist-lable">用户名</p>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="输入用户名" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">昵称</p>
			<input class="input-style" name="nickname" value="${student.nickname }" id="nickName" type="text" placeholder="昵称" >
			<!-- 提示信息 --><p id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">密码</p>
			<input class="input-style" name="password" value="${student.password }" id="passWord" type="password" placeholder="密码(8-16位数字和字母组成)" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">重复密码</p>
			<input class="input-style" name="newPassword" value="${newPassword }" id="newpassWord" type="password" placeholder="确认密码" >
			<!-- 提示信息 --><p  id="tishi" type="text" placeholder="提示信息">${newPassword1 }</p>
		</div>
		<div>
			<p class="admin-regist-lable">电话</p>
			<input class="input-style" name="telephone" value="${student.telephone }" id="telephone" type="text" placeholder="手机号" >
			<!-- 提示信息 --><p id="tishi" type="text" placeholder="提示信息"></p>
		</div>
		<div>
			<p class="admin-regist-lable">邮箱</p>
			<input class="input-style" name="email" value="${student.email }" id="email" type="text" placeholder="邮箱" >
			<!-- 提示信息 --><p id="tishi" type="text" placeholder="提示信息">aaa</p>
		</div>
		<div class="shenfen" style="display:none">
			添加老师<input name="type" type="radio" value="2" checked="true">
			<p id="tishi" type="text" placeholder="提示信息">${type }</p>
		</div>
		
		<div class="fieldset">
			<button id="login-btn" type="submit" class="admin-regist-submit-btn">
				<p style="color:none">确认添加</p>
			</button>
			<p id="tishi" type="text" placeholder="提示信息">${register }</p>
		</div>
		</form>	
	</div>
	 <script type="text/javascript" src="../../js/jquery-1.7.2.js"></script>
     <script type="text/javascript" >

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
 		          $('#nickName').next().html("该昵称可用").css('color','#10ea10');
 	          }
 	          if(data=="false1"){
 	        	  $('#nickName').next().css('color','red');
 		          $('#nickName').next().html("昵称不能为空");
 		          $('#nickName')[0].focus();
 	          }
 	          if(data=="false"){
 	        	  $('#nickName').next().css('color','red');
 		          $('#nickName').next().html("昵称已存在");
 	        	  $('#nickName')[0].focus();
 	          }
 	        },error:function(XMLHttpRequest, textStatus, errorThrown){  
 	        	layer.alert('未知异常');
 	   	  	}
 	    });
 	})

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
				          $('#userName').next().html("用户名可用").css('color','#10ea10');
			          }
			          if(data=="false1"){
			        	  $('#userName').next().css('color','red');
				          $('#userName').next().html("用户名不能为空");
				          $('#userName')[0].focus();
			          }
			          if(data=="false"){
			        	  $('#userName').next().css('color','red');
				          $('#userName').next().html("用户名已存在");	
			        	  $('#userName')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
	
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
			        	  $('#passWord').next().css('color','red');
				          $('#passWord').next().html("密码不能为空");
				          $('#passWord')[0].focus();
			          }
			          if(data=="false"){
			        	  $('#passWord').next().css('color','red');
				          $('#passWord').next().html("密码格式不正确");
				          $('#passWord')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})

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
				          $('#email').next().html("该邮箱可用").css('color','#10ea10');
			          }
			          if(data=="false1"){
			        	  $('#email').next().css('color','red');
				          $('#email').next().html("邮箱不能为空");
				          $('#email')[0].focus();
			          }
			          if(data=="false2"){
			        	  $('#email').next().css('color','red');
				          $('#email').next().html("邮箱已存在");
				          $('#email')[0].focus();
				         
			          }
			          if(data=="false"){
			        	  $('#email').next().css('color','red');
				          $('#email').next().html("邮箱不正确");
				          $('#email')[0].focus();
			          }
			        },error:function(XMLHttpRequest, textStatus, errorThrown){  
			        	layer.alert('未知异常');
			   	  	}
			    });
			})
	
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
				          $('#telephone').next().html("该号码可用").css('color','#10ea10');
			          }
			          if(data=="false1"){
			        	  $('#telephone').next().css('color','red');
				          $('#telephone').next().html("手机号不能为空");
				          $('#telephone')[0].focus();
			          }
			          if(data=="false"){
			        	  $('#telephone').next().css('color','red');
				          $('#telephone').next().html("手机号无效");
				          $('#telephone')[0].focus();
			          }
			          if(data=="false2"){
			        	  $('#telephone').next().css('color','red');
				          $('#telephone').next().html("手机号已存在");
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