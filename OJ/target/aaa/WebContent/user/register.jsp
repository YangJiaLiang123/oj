<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	#tubiao{
		position: absolute;
		left:13%;
		text-align:center;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/login register.css" />
<title>Insert title here</title>
</head>
<body>
	<div class="register" ">
		<form method="post" action="register.do">
		<div>
			<div style="float:left;"id="tubiao">
				<img src="images/user.jpg" class="tubiao" style="height:20px;margin-top:3px;margin-right:5px;">
			</div>
			<input class="input-style" name="nickname" value="${student.nickname }" id="nickName" type="text" placeholder="昵称" style="width:60%;height:25px;border-radius:4px;margin-left:18%;">
			<!-- 提示信息 -->
			<span id="tishi" type="text" style="width:30%;height:20px;margin-left:18%;float:left;"></span>
		</div>
		<div>
			<div style="float:left;"id="tubiao">
				<img src="images/user.jpg" style="height:20px;margin-right:5px;margin-top:25px;">
			</div>
			<input class="input-style" name="studentname" value="${student.studentname }" id="userName" type="text" placeholder="输入用户名" style="width:60%;height:25px;border-radius:4px;margin-top:3px;margin-left:18%;">
			<!-- 提示信息 -->
			<span  id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;margin-left:18%;float:left;"></span>
		</div>
		<div>
			<div style="float:left;"id="tubiao">
				<img src="images/password1.jpg" style="height:20px;margin-top:25px;margin-right:5px;">
			</div>
			<input class="input-style" name="password" value="${student.password }" id="passWord" type="password" placeholder="密码(8-16位数字和字母组成)" style="width:60%;height:25px;border-radius:4px;margin-top:3px;margin-left:18%;">
			<!-- 提示信息 -->
			<span  id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;margin-left:18%;float:left;"></span>
		</div>
		<div>
			<div style="float:left;"id="tubiao">
				<img src="images/password1.jpg" style="height:20px;margin-top:25px;margin-right:5px;">
			</div>
			<input class="input-style" name="newPassword" value="${newPassword }" id="newpassWord" type="password" placeholder="确认密码" style="width:60%;height:25px;border-radius:4px;margin-top:3px;margin-left:18%;">
			<!-- 提示信息 -->
			<span  id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;margin-left:18%;float:left;">${newPassword1 }</span>
		</div>
		<div>
			<div style="float:left;"id="tubiao">
				<img src="images/phone.jpg" style="height:23px;margin-top:25px;margin-right:0px;">
			</div>
			<input class="input-style" name="telephone" value="${student.telephone }" id="telephone" type="text" placeholder="手机号" style="width:60%;height:25px;border-radius:4px;margin-top:3px;margin-left:18%;">
			<!-- 提示信息 -->
			<span id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;margin-left:18%;float:left;"></span>
		</div>
		<div>
			<div style="float:left;"id="tubiao">
				<img src="images/email1.jpg" style="height:18px;margin-top:25px;margin-right:0px;">
			</div>
			<input class="input-style" name="email" value="${student.email }" id="email" type="text" placeholder="邮箱" style="width:60%;height:25px;border-radius:4px;margin-top:3px;margin-left:18%;">
			<!-- 提示信息 -->
			<span id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;margin-left:18%;float:left;"></span>
		</div>
		<div class="shenfen" style="margin-left:18%;float:left;">
			 <a>教师注册</a><input name="type" type="radio" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a>学生注册</a><input name="type" type="radio" value="1">
			<span id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;margin-left:18%;float:left;">${type }</span>
		</div>
		<p class="fieldset">
			<button id="login-btn" type="submit" class="ant-btn ant-btn-primary" style="width:67%;margin-left:12.2%;">
				<span style="color:none">注册</span>
			</button>
			<span id="tishi" type="text" placeholder="提示信息" style="width:30%;height:20px;margin-left:18%;float:left;">${register }</span>
		</p>
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
</body>
</html>