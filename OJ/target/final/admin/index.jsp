<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>软件学院OJ平台后台管理</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="icon" href="favicon.ico">
	<link rel="stylesheet" href="layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="css/main.css" media="all" />
</head>
<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<!-- 顶部 -->
		<div class="layui-header header">
			<div class="layui-main">
				<a href="#" class="logo">河北师范大学软件学院OJ平台后台管理</a>
				<!-- 搜索 -->
				<div class="layui-form component">
			        <select name="modules" lay-verify="required" lay-search="">
						<option value="">直接选择或搜索选择</option>
						<option value="1">layer</option>
			        </select>
			        <i class="layui-icon">&#xe615;</i>
			    </div>
			    <!-- 天气信息 -->
			    <div class="weather" pc>
			    	<div id="tp-weather-widget"></div>
					<script>(function(T,h,i,n,k,P,a,g,e){
						g=function(){P=h.createElement(i);
						a=h.getElementsByTagName(i)[0];
						P.src=k;P.charset="utf-8";
						P.async=1;a.parentNode.insertBefore(P,a)};
						T["ThinkPageWeatherWidgetObject"]=n;
						T[n]||(T[n]=function(){(T[n].q=T[n].q||[]).push(arguments)});
						T[n].l=+new Date();
						if(T.attachEvent){T.attachEvent("onload",g)}
						else{T.addEventListener("load",g,false)}}
					   (window,document,"script","tpwidget","//widget.seniverse.com/widget/chameleon.js"))
					</script>
					<script>tpwidget("init", {
					    "flavor": "slim",
					    "location": "WX4FBXXFKE4F",
					    "geolocation": "disabled",
					    "language": "zh-chs",
					    "unit": "c",
					    "theme": "chameleon",
					    "container": "tp-weather-widget",
					    "bubble": "disabled",
					    "alarmType": "badge",
					    "color": "#FFFFFF",
					    "uid": "U9EC08A15F",
					    "hash": "14dff75e7253d3a8b9727522759f3455"
					});
					tpwidget("show");</script>

			    </div>
			    <!-- 顶部右侧上方菜单 -->
			    <ul class="layui-nav top_menu">
			    	<li class="layui-nav-item showNotice" id="showNotice" pc>
						<a href="javascript:;"><i class="iconfont icon-gonggao"></i><cite>系统公告</cite></a>
					</li>
					<li class="layui-nav-item" pc>
						<a href="javascript:;">
							<img src="images/face.jpg" class="layui-circle" width="35" height="35">
							<cite>${sessionScope.adminname}</cite>
						</a>
						<dl class="layui-nav-child">
							<dd><a href="javascript:;" data-url="page/user/changeSelfInf.jsp">
								<i class="iconfont icon-zhanghu" data-icon="icon-zhanghu"></i><cite>个人资料</cite></a>
							</dd>
							<dd><a href="javascript:;" data-url="page/user/changeSelfPwd.jsp">
								<i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a>
							</dd>			
							<a href="index.jsp" style="padding-left:22%;">退出</a>							
						</dl>
					</li>
				</ul>
			</div>
		</div>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
			<div class="user-photo">
				<a class="img" title="我的头像" ><img src="images/face.jpg"></a>
				<p>你好！<span class="userName">${sessionScope.adminname }</span></p>
			</div>
			
			<!-- 左侧导航条 -->
				
			<div>
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item layui-nav-itemed">
						<a href="javascript:;" data-url="page/main.jsp">
							<i class="iconfont icon-computer" data-icon="icon-computer">
								<cite>后台首页</cite>
							</i>
						</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;" data-url="page/user/usersList.do">
							<i class="iconfont icon-computer" data-icon="icon-computer">
								<cite>学生管理</cite>
							</i>
						</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;" data-url="page/user/teacherList.do">
							<i class="iconfont icon-computer" data-icon="">
								<cite>教师管理</cite>
							</i>
						</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;" data-url="page/topics/topicsList.do">
							<i class="iconfont icon-computer" data-icon="">
								<cite>题目管理</cite>
							</i>
						</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;" data-url="page/match/matchList.jsp">  <!-- 未修改 -->
							<i class="iconfont icon-computer" data-icon="">
								<cite>比赛管理</cite>
							</i>
						</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;" data-url="page/systemParameter/systemParameter.html">
							<i class="iconfont icon-computer" data-icon="icon-computer">
								<cite>基本参数</cite>
							</i>
						</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;">
							<i class="iconfont icon-computer" data-icon=""></i>
							<cite>二级菜单</cite>
							
						</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" data-url>
									<i class="layui-icon" data-icon=""></i>
						<!-- 二级菜单中，i标签的data-icon属性不可省略 -->
									<cite>二级菜单1</cite>
								</a>
							</dd>
							<dd>
								<a href="javascript:;" data-url>
									<i class="layui-icon" data-icon=""></i>
									<cite>二级菜单2</cite>
								</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="index.jsp"  onclick="layer.alert('返回登录界面index.jsp')">
							<i class="" data-icon="">
								<cite>退出</cite>
							</i>
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		
		<!-- 右侧内容 -->
		<div class="layui-body layui-form">
			<div class="layui-tab marg0" lay-filter="bodyTab">
				<ul class="layui-tab-title top_tab">
					<li class="layui-this" lay-id=""><i class="iconfont icon-computer"></i> <cite>后台首页</cite></li>
				</ul>
				<div class="layui-tab-content clildFrame">
					<div class="layui-tab-item layui-show">
					
		<!-- 中间主要显示区域内容页面 -->			
						<iframe src="page/main.do"></iframe>
						
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- 底部 -->
		<div class="layui-footer footer">
			<p>copyright @2018 河北师范大学软件学院 </p>
		</div>
	</div>

	<!-- 锁屏 -->
	<div class="admin-header-lock" id="lock-box" style="display: none;">
		<div class="admin-header-lock-img"><img src="images/face.jpg"/></div>
		<div class="admin-header-lock-name" id="lockUserName">锁屏用户名</div>
		<div class="input_btn">
			<input type="password" class="admin-header-lock-input layui-input" placeholder="请输入密码解锁.." name="lockPwd" id="lockPwd" />
			<button class="layui-btn" id="unlock">解锁</button>
		</div>
		<p>请输入“123456”，否则不会解锁成功哦！！！</p>
	</div>
	<!-- 移动导航 -->
	<div class="site-tree-mobile layui-hide"><i class="layui-icon">&#xe602;</i></div>
	<div class="site-mobile-shade"></div>

	<script type="text/javascript" src="layui/layui.js"></script>
	<script type="text/javascript" src="js/nav.js"></script>
	<script type="text/javascript" src="js/leftNav.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	
</body>
</html>