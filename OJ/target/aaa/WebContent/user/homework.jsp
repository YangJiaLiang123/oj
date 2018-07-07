<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>作业</title>
<script>
layui.use('code', function(){ //加载code模块
	  layui.code(); //引用code方法
	  abobt:false;//取消右上角关于
	});
</script>

</head>
<body>
  <!--头部--> 
  <div class="header"> 
	<%@include file="header.jsp" %>
  </div> 
  
  
  
  <!-- 中间内容部分 -->
  <div class="bbody">
  
  		<!-- 上部提示与搜索 -->
		<div class="about_cont_a"> 
		   <div class="main"> 
		    <div class="about_conta_top"> 
		    
		     <div class="about_conta_topl"> 
		      <!--  <img width="382" height="60" src="images/pro_a.jpg" /> -->
		      <p style="font-size:50px">  作业列表</p>
		     </div> 
		     
		     <div class="about_conta_topr"> 
		     	<!-- 面包屑 -->
			      <div class="about_conta_toprt"> 
			       <span>当前位置：</span> 
			       <a href="index.html">主页</a> &gt; 
			       <a href="website_build.html">作业列表</a> &gt; 
			      </div> 
			      
		      	<!-- 搜索 -->
			      <div class="about_conta_toprb a"> 
			       <input type="text" name="username" lay-verify="required" 
			       		placeholder="题目/ID/作者" autocomplete="off" 
			       		class="layui-input" id="topics-search-input">
			       		<!-- 改变搜索框样式 -->
			       <a href="/jzbj/15.html" target="_self" style="border-radius:5px;border-bottom-left-radius:0px;border-top-left-radius:0px;width:65px;margin-left:0px;" >搜索</a> 
			      </div> 
		     </div> 
		    </div> 
		  
		  
		  
		<!-- 下部分页与内容 --> 
		  		<script>layui.use('element', function(){});</script>
				<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
					  <ul class="layui-tab-title">
					    <li class="layui-this">待完成</li>
					    <li>未完成</li>
					    <li>已完成</li>
					    <li>已验收</li>
		
					  </ul>
					  <div class="layui-tab-content">
			<!-- 各类题目 -->		  
							<!-- 分页script -->
							<script>
								layui.use(['laypage', 'layer'], function(){
								  var laypage = layui.laypage
								  ,layer = layui.layer;
								  //自定义样式
								  laypage.render({
								    elem: 'demo2-2'
								    ,count: 100
								    ,theme: '#FFB800'
								  });
								  
								});
								</script>
							
							
					  	<!-- 标签1内容：待完成 -->
					    <div class="layui-tab-item layui-show">
					    
					    	<!-- 题目内容 -->
					    	<div> 
					    	1
							     <table class="layui-table" lay-skin="line">
									  <thead>
									    <tr>
									      <th width="100px">编号</th>
									      <th width="800px">题目</th>
									      <th width="100px">难度</th>
									      <th width="100px">通过</th>
									      <th width="100px">通过率</th>
									    </tr> 
									  </thead>
									  <tbody>
									  	
									    <tr onclick="layer.alert('aaa')">
										      <td>1001</td>
										      <td>
										      	<a href="">XXXXXXXXXXXXXXXXXXXXXXXXXXX
										      	</a>	
										      </td>
										      <td><span class="topic-level-1">1</span></td>
										      <td>1</td>
										      <td>50%</td>
									       </a>
									    </tr>
									   
									    <tr onclick="layer.alert('bbb')">
										      <td>1002</td>
										      <td>
										      	<a href="">XXXXXXXXXXXXXXXXXXXXXXXXXXX
										      	</a>	
										      </td>
										      <td><span class="topic-level-2">2</span></td>
										      <td>2</td>
										      <td>50%</td>
									       </a>
									    </tr>
									    
									    
									    <tr onclick="layer.alert('ccc')">
										      <td>1003</td>
										      <td>
										      	<a href="">XXXXXXXXXXXXXXXXXXXXXXXXXXX
										      	</a>	
										      </td>
										      <td><span class="topic-level-3">3</span></td>
										      <td>1</td>
										      <td>50%</td>
									       </a>
									    </tr>
									    
									    <tr onclick="layer.alert('ddd')">
										      <td>1004</td>
										      <td>
										      	<a href="">XXXXXXXXXXXXXXXXXXXXXXXXXXX
										      	</a>	
										      </td>
										      <td><span class="topic-level-4">4</span></td>
										      <td>1</td>
										      <td>50%</td>
									       </a>
									    </tr>
									    
									    
									  </tbody>
									</table>   
							 </div>
							 
							 <!-- 分页 -->
							 <div class="apart-page" style="margin-left:25%">
								<div id="demo2-2"></div>
								
							</div>

					    </div>
					    
					    <!-- 标签2内容：未完成 -->
					    <div class="layui-tab-item">
					    2未完成
					    	<div>
					    		
					    	</div>
					    	
					    	<!-- 分页 -->
							 <div class="apart-page" style="margin-left:25%">
								<div id="demo2-2"></div>
				
							</div>
					    </div>
					    
					    <!-- 标签3内容：已完成 -->
					    <div class="layui-tab-item">
					    3已完成
					    	<!-- 题目 -->
					    	<div>
					    	
					    	</div>
					    	
					    	<!-- 分页 -->
							 <div class="apart-page" style="margin-left:25%">
								<div id="demo2-2"></div>
								<script>
								layui.use(['laypage', 'layer'], function(){
								  var laypage = layui.laypage
								  ,layer = layui.layer;
								  //自定义样式
								  laypage.render({
								    elem: 'demo2-2'
								    ,count: 100
								    ,theme: '#FFB800'
								  });
								  
								});
								</script>
							</div>
					    </div>
					    
					    <!-- 标签4内容：已验收 -->
					    <div class="layui-tab-item">
					    4已验收
					    	<!-- 题目 -->
					    	<div>
					    	
					    	</div>
					    	
					    	<!-- 分页 -->
							 <div class="apart-page" style="margin-left:25%">
								<div id="demo2-2"></div>
								<script>
								layui.use(['laypage', 'layer'], function(){
								  var laypage = layui.laypage
								  ,layer = layui.layer;
								  //自定义样式
								  laypage.render({
								    elem: 'demo2-2'
								    ,count: 100
								    ,theme: '#FFB800'
								  });
								  
								});
								</script>
							</div>
					    
					    </div>
					    
					    
					    
					    
					    <div class="layui-tab-item">内容5
					    
					    
					    </div>
					  </div>
				</div> 
		
		
		</div>
		</div>

		
  </div>
  
  
  
  
   <!-- 网站底部 开始 --> 
  <div class="footer">
  	<%@include file="footer.jsp" %>
  </div>
  
</body>
</html>