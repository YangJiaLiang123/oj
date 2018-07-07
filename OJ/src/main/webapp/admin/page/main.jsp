<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>首页</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../css/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="../css/main.css" media="all" />
</head>
<body class="childrenBody">
	<div class="panel_box row">
		<%--<div class="panel col">--%>
			<%--<a href="javascript:;" data-url="page/message/message.html">--%>
				<%--<div class="panel_icon">--%>
					<%--<i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>--%>
				<%--</div>--%>
				<%--<div class="panel_word newMessage">--%>
					<%--<cite style="margin-top:9%;">待处理</cite>--%>
				<%--</div>--%>
			<%--</a>--%>
		<%--</div>--%>
		<div class="panel col">
			<a href="javascript:;" data-url="page/user/usersList.do">
				<div class="panel_icon" style="background-color:#009688;">
					<i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
				</div>
				<div class="panel_word">
					<span>${studentCount}</span>
					<cite style="margin-top:9%;">学生管理</cite>
				</div>
			</a>
		</div>
		
		<div class="panel col">
			<a href="javascript:;" data-url="page/user/teacherList.do">
				<div class="panel_icon" style="background-color:#9E67C3;">
					<i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
				</div>
				<div class="panel_word">
					<span>${teacherCount}</span>
					<cite style="margin-top:9%;">教师管理</cite>
				</div>
			</a>
		</div>
		
		<div class="panel col">
			<a href="javascript:;" data-url="page/topics/topicsList.do">
				<div class="panel_icon" style="background-color:#F7B824;">
					<i class="iconfont icon-wenben" data-icon="icon-wenben"></i>
				</div>
				<div class="panel_word">
					<span>${topicCount}</span>
					<cite style="margin-top:9%;">题目管理</cite>
				</div>
			</a>
		</div>
		<div class="panel col max_panel">
			<a href="javascript:;" data-url="page/match/matchList.jsp">
				<div class="panel_icon" style="background-color:#2F4056;">
					<i class="iconfont icon-text" data-icon="icon-text"></i>
				</div>
				<div class="panel_word">
					<span style="font-size: 1em;">Coming soon</span>
					<cite style="margin-top:9%;">比赛管理</cite>
				</div>
			</a>
		</div>
		
		
		<!-- 判断是否为超级管理员，超级管理员显示，其余不显示 -->
		<%  String superadmin="";
			superadmin=(String)session.getAttribute("adminname");
			if("admin".equals(superadmin) ){
			%>
		<div class="panel col">
			<a href="javascript:;" data-url="page/toadmin/adminList.do">
				<div class="panel_icon" style="background-color:#F37A44;">
					<i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
				</div>
				<div class="panel_word">
					<span>${adminCount}</span>
					<cite style="margin-top:9%;">管理员管理</cite>
				</div>
			</a>
		</div>	
		<%} %>

		<!-- 未使用图标 -->
		<%--<div class="panel col">--%>
			<%--<a href="javascript:;" data-url="page/user/allUsers.html">--%>
				<%--<div class="panel_icon" style="background-color:#FF5722;">--%>
					<%--<i class="iconfont icon-dongtaifensishu" data-icon="icon-dongtaifensishu"></i>--%>
				<%--</div>--%>
				<%--<div class="panel_word userAll">--%>
					<%--<span></span>--%>
					<%--<cite>新增人数</cite>--%>
				<%--</div>--%>
			<%--</a>--%>
		<%--</div>--%>
		<%--<div class="panel col">--%>
			<%--<a href="javascript:;" data-url="page/img/images.html">--%>
				<%--<div class="panel_icon" style="background-color:#5FB878;">--%>
					<%--<i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>--%>
				<%--</div>--%>
				<%--<div class="panel_word imgAll">--%>
					<%--<span></span>--%>
					<%--<cite>图片总数</cite>--%>
				<%--</div>--%>
			<%--</a>--%>
		<%--</div>--%>
		
		
	</div>
	<blockquote class="layui-elem-quote">
		<p>本后台系统由layui后台模板修改而来</p>
	</blockquote>
	<div class="row">
		<div class="sysNotice col">
			<blockquote class="layui-elem-quote title">更新日志</blockquote>
			<div class="layui-elem-quote layui-quote-nm">
				<h3># 1.0.9_rls （发行版） - 2017-03-01</h3>
			</div>
		</div>
		<div class="sysNotice col">
			<blockquote class="layui-elem-quote title">系统基本参数</blockquote>
			<table class="layui-table">
				<colgroup>
					<col width="150">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<td>当前版本</td>
						<td class="version"></td>
					</tr>
					<tr>
						<td>开发作者</td>
						<td class="author"></td>
					</tr>
					<tr>
						<td>网站首页</td>
						<td class="homePage"></td>
					</tr>
					<tr>
						<td>服务器环境</td>
						<td class="server"></td>
					</tr>
					<tr>
						<td>数据库版本</td>
						<td class="dataBase"></td>
					</tr>
					<tr>
						<td>最大上传限制</td>
						<td class="maxUpload"></td>
					</tr>
					<tr>
						<td>当前用户权限</td>
						<td class="userRights"></td>
					</tr>
				</tbody>
			</table>
			<blockquote class="layui-elem-quote title">最新文章<i class="iconfont icon-new1"></i></blockquote>
			<table class="layui-table" lay-skin="line">
				<colgroup>
					<col>
					<col width="110">
				</colgroup>
				<tbody class="hot_news"></tbody>
			</table> 
		</div>
	</div>

	<script type="text/javascript" src="../layui/layui.js"></script>
	<script type="text/javascript" src="../js/main.js"></script>
</body>
</html>