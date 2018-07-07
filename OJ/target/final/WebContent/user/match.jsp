<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>

</head>
<body>
  <!--头部--> 
  <div class="header"> 
	<%@include file="header.jsp" %>
  </div> 
  
  
  
  <!-- 中间内容部分 -->
  <div class="bbody">
	
			
			
			
			
			  <!-- 服务开始 --> 
			  <div class="about_cont_a"> 
			   <div class="about_cont_aa"></div> 
			   <div class="about_cont_vc"></div> 
			   <div class="main"> 
			    <div class="about_conta_top"> 
			     <div class="about_conta_topl">
			      <!--  <img width="382" height="60" src="images/server_banner.jpg" /> -->
			      <p style="font-size:50px">比赛列表</p>
			     </div> 
			     <div class="about_conta_topr"> 
			      <div class="about_conta_toprt">
			       <span>当前位置：</span> 
			       <a href="index.html">主页</a> &gt; 
			       <a href="service.html">服务范围</a>
			      </div> 
			      
			       <!-- 分类 -->
			      <div class="about_conta_toprb a"> 
			      
			       <input type="text" name="username" lay-verify="required" 
			       		placeholder="题目/ID/作者" autocomplete="off" 
			       		class="layui-input" id="topics-search-input">
			       		<!-- 改变搜索框样式 -->
			       <a href="/jzbj/15.html" target="_self" style="border-radius:5px;border-bottom-left-radius:0px;border-top-left-radius:0px;width:65px;margin-left:0px;" >搜索</a> 
			      </div> 
			     </div> 
			    </div> 
			    <div class="coll"> 
			     <div class="serBody"> 
			      <ul id="serlist" class="serlist"> 
			      
			       <li class="serli"> 
				        <div class="serLeft"> 
				          <img class="match-school-img" src="images/1-141123211G10-L.jpg" alt="xxx学校" title="xxx学校" />
				        </div> 
				        <div class="serRight"> 
				         <div class="serLabel">
				          <span class="match-title" >2018年度软件学院第三届程序设计大赛</span>
				         </div> 
				         <div class="serSum">
				          	<div class="match-level-star">
				          		<!-- 难度 -->
				          		<div style="margin-top:10px">
				          			<span>难度</span>
				          			<span>5</span>
				          			<!-- 	<div id="match-level"></div>
						          		<script src="../layui/layui.js"></script>
										<script>
										layui.use(['rate'], function(){
										  var rate = layui.rate;
										  //只读
										  rate.render({
										    elem: '#match-level'
										    ,half:true
										    ,value: 4.5
										    ,readonly: true
										  });
										});
										</script>  -->
				          		</div>
				          		
				          		<!-- 日期 -->
				          		<div style="margin-top:10px">
				          			<img src="" alt="日期小图标">
				          			<span>日期</span>
				          			
				          		</div>
				          		
				          		<!-- 时长 -->
				          		<div style="margin-top:10px">
				          			<img src="" alt="时间小图标">
				          			<span>时长</span>
				          		</div>
				          		
				          	
				          	</div>
				          	<div>
				          	</div>
				          </div> 
				         
				         <a  class="match-join-btn" href="" > <span>参加比赛</span></a> 
				        </div> 
			       </li> 
			       
			        
			      </ul> 
			     </div> 
			    </div> 
			   </div> 
			  </div> 
			  <!-- 服务结束 --> 
	
	
	
  </div>
  
  
  
  
 
  	<!-- 网站底部 开始 -->
	<div class="footer">
  		<%@include file="footer.jsp" %>
  </div>
</body>
</html>