<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../common/headmeta.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
 <head>
 	<!--
 		.log-regist 登录注册按钮
 		#menu 设置最小宽度适配
 	 -->
 	<style>
 		#login-btn{
 			width:68%;
 		}
		.log-regist{
			padding-right:0px;
			margin-right:px;
			padding-top:12px;
		}
	#menu{
		min-width:900px;
		height:60px;
		
	}
	.mwrap{
		margin-left:80px;
	}
	.mli{
		width:11%;
		height:60px;
		
	}
	#topMenu1{
		width:66px;
	}
	.mname{
		text-align:center;
		width:70px;
	}
	.mlink{
		height:38px;
	}
	</style> 		
</head> 
 <body>
 <div class="header_bar" style="overflow: auto;"></div> 
	   <div id="menu" class="menu">
	   		<!--width：340px-22%,margin-left:30px-15px;-->
		   <div style="width:22%;margin-left:15px;margin-top:12px; float:left;">
		   	<!-- min-width:1366px 适配 -->
		      <p style="font-size:25px;min-width:1366px;">河北师范大学软件学院OJ平台</p>
		   </div>
	
	<!-- 上部菜单 -->
		   <div style="float:left;">
			    <ul class="mwrap" > 
				      <li class="mli"> 
				        <a href="index.jsp" class="mlink curr" id="topMenu1"> 
				          <h3 class="mname">首页</h3> 
				        </a> 
				      </li>
				      
				      <li class="mli">
				        <a href="init.do" class="mlink" id="topMenu1"> 
				          <h3 class="mname">题目</h3>
				        </a>
				      </li>
				      <li class="mli">
				        <a href="homework.jsp" class="mlink" id="topMenu1"> 
				          <h3 class="mname">作业</h3>
				        </a>
				      </li> 
				      <li class="mli">
				        <a href="match.jsp" class="mlink" id="topMenu1">
				        <h3 class="mname">比赛</h3>
				        </a> 
				      </li> 
				      <li class="mli">
				        <a href="rank.jsp" class="mlink" id="topMenu1">
				          <h3 class="mname">排名</h3>
				        </a>
				      </li>
				      
				      <li class="mli">
				        <a href="Blog.jsp" class="mlink" id="topMenu1">
				        <h3 class="mname">博客</h3>
				        </a>
				      </li> 
				      <li class="mli">
				        <a href="news.html" class="mlink" id="topMenu1" style="widows:75px;margin-left:10px;">
				          <h3 class="mname">资源下载</h3>
				        </a>
				      </li> 
				      
				      <li class="mli">
				        <a href="selectAll.do" class="mlink" id="topMenu1" style="widows:75px;margin-left:35px;">
				          <h3 class="mname">答题记录</h3>
				        </a>
				      </li>
				     
			    </ul> 
		    </div>
		    
		    
		    <!-- 登陆注册按钮js事件 -->
		
		    <script>
				layui.use('layer', function(){});
			</script>
	  		<script>
			  function tologin(){
				    layer.open({
				    type: 2,
				    title: '请登录',
				    shadeClose: false,
				     shade: 0.8,
				    area: ['500px', '42%'],//宽 高
				    content: 'login.jsp' //弹窗iframe的url
					});
				}
			  function toregister(){
				    layer.open({
				    type: 2,
				    title: '请注册',
				    shadeClose: false,
				     shade: 0.8,
				    area: ['500px', '72%'],//宽 高
				    content: 'register.jsp' //弹窗iframe的url
					});
				}
			</script>		    
		    
		    
		    <%  String username="";
				username=(String)session.getAttribute("username");
				if(username ==null || username==""){
				%>
		    <div class="log-regist" >
		    	<button class="layui-btn layui-btn-primary layui-btn-radius" id="header-login-btn" onclick="tologin()">登录</button>
		    	<button class="layui-btn layui-btn-primary layui-btn-radius" id="header_regist-btn"  onclick="toregister()">注册</button>
		    </div>
		    <%}else{ %>
		    <div class="loginner-inf">
		    
				<ul class="layui-nav">
				  <li class="layui-nav-item">
				    <a href="javascript:;">
				    	<img src="http://t.cn/RCzsdCq" class="layui-nav-img">
				    	<span style="margin-right:20px">用户姓名</span></a>
				    <dl class="layui-nav-child" >
				      <dd><a href="javascript:;">个人中心</a></dd>
				      <dd><a href="javascript:;">修改信息</a></dd>
				      <dd><a href="javascript:;">退出</a></dd>
				    </dl>
				  </li>
				</ul>
		    </div>
		    <%} %>
		    
		    
		    
		    
		    
			<script>
				layui.use('element', function(){
				  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
				  
				  //监听导航点击
				  element.on('nav(demo)', function(elem){
				    //console.log(elem)
				    layer.msg(elem.text());
				  });
				});
				</script>		    
 
	    <!-- 顶部菜单栏底部横条背景 -->
	    <div class="mshadow"></div> 
	   </div> 

 </body>
</html>