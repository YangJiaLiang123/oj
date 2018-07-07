<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0" > 
	<title>登录界面</title>
    <link href="css/default.css" rel="stylesheet" type="text/css">
	<!--必要样式-->
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/loaders.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class='login'>
	<form action="login.action" method="post">
		  <div class='login_title'>
		    <span>管理员登录</span>
		  </div>
		  <div style="height:30px;">
		    <span>${msg }</span>
		  </div>
		  <div class='login_fields'>
		    <div class='login_fields__user'>
		      <div class='icon'>
		        <img alt="" src='img/user_icon_copy.png' />
		      </div>
		      <input name="name" placeholder='用户名' maxlength="16" type='text' autocomplete="off" value=""/>
		        <div class='validation'>
		          <img alt="" src='img/tick.png' />
		        </div>
		    </div>
		    <div class='login_fields__password'>
		      <div class='icon'>
		        <img alt="" src='img/lock_icon_copy.png' />
		      </div>
		      <input name="password" placeholder='密码' maxlength="16" type='password' autocomplete="off" />
		      <div class='validation'>
		        <img alt="" src='img/tick.png' />
		      </div>
		    </div>
		    <div class='login_fields__password'>
		      <div class='icon'>
		        <img alt="" src='img/key.png' />
		      </div>
		      <input name="verification" placeholder='验证码' maxlength="4" type='text' name="ValidateNum" autocomplete="off" />
		      <!-- <div class='validation' style="opacity: 1; right: -5px;top: -3px;">
	          	<canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
		      </div> -->
		      <div class='validation' style="opacity: 1;top: 3px;">
		       <img id="imageCode" alt="" src="../common/yzm-image.jsp" onclick="this.src='../common/yzm-image.jsp'.rand();" style="cursor: pointer;margin-top:5px" title="点我更换验证码"/>
		      </div>  
		    </div>
		    <div class='login_fields__submit'>
		      <input type='submit' value='登录' />
		    </div>
		  </div>
		  <div class='success'>
		  </div>
		  <div class='disclaimer'>
		    <p>欢迎登录后台管理系统</p>
		  </div>
		</div>
	</form>
	<!-- <div class='authent'>
	  <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
        </div>
	  <p>认证中...</p>
	</div>
	<div class="OverWindows"></div> -->
	
    <link href="layui/css/layui.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src='js/stopExecutionOnTimeout.js?t=1'></script>
    <script type="text/javascript" src="layui/layui.js"></script>
    <script type="text/javascript" src="js/Particleground.js"></script>
	<!-- <script type="text/javascript" src="js/Treatment.js"></script> -->
    <script type="text/javascript" src="js/jquery.mockjax.js"></script>
	<script type="text/javascript">


		/*
		var CodeVal = 0;
	    Code();
	    function Code() {
			if(canGetCookie == 1){
				createCode("AdminCode");
				var AdminCode = getCookieValue("AdminCode");
				showCheck(AdminCode);
			}else{
				showCheck(createCode(""));
			}
	    }
	    function showCheck(a) {
			CodeVal = a;
	        var c = document.getElementById("myCanvas");
	        var ctx = c.getContext("2d");
	        ctx.clearRect(0, 0, 1000, 1000);
	        ctx.font = "80px 'Hiragino Sans GB'";
	        ctx.fillStyle = "#E8DFE8";
	        ctx.fillText(a, 0, 100);
	    }
	    $(document).keypress(function (e) {
	        // 回车键事件  
	        if (e.which == 13) {
	            $('input[type="button"]').click();
	        }
	    });*/
	    //粒子背景特效
	    $('body').particleground({
	        dotColor: '#E8DFE8',
	        lineColor: '#133b88'
	    });
	    $('input[name="pwd"]').focus(function () {
	        $(this).attr('type', 'password');
	    });
	    $('input[type="text"]').focus(function () {
	        $(this).prev().animate({ 'opacity': '1' }, 200);
	    });
	    $('input[type="text"],input[type="password"]').blur(function () {
	        $(this).prev().animate({ 'opacity': '.5' }, 200);
	    });
	    $('input[name="login"],input[name="pwd"]').keyup(function () {
	        var Len = $(this).val().length;
	        if (!$(this).val() == '' && Len >= 5) {
	            $(this).next().animate({
	                'opacity': '1',
	                'right': '30'
	            }, 200);
	        } else {
	            $(this).next().animate({
	                'opacity': '0',
	                'right': '20'
	            }, 200);
	        }
	    });
    </script>
    <!-- 验证码图片 -->
	<script type="text/javascript">
	var basePath = "<%=request.getContextPath()%>/";
	function checkcode(){
		//document.getElementById("imageCode").src = basePath  + "image/getImage.action?" + new Date();//改变验证码图片
		//document.getElementById("imageCode").src ="../common/yzm-image.jsp";//改变验证码图片
		this.src='/captcha?'+Math.random()
	}  
	$(function(){  
	    checkcode();
	});  
	</script> 
</body>
</html>
