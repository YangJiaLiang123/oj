<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>排名</title>
<%@include file="../common/headmeta.jsp"%>
</head>
<body>
	<!--头部-->
	<div class="header"> 
		<%@include file="header.jsp" %>
  	</div> 
  <div class="main">
	<div style="margin-top:100px;">
		 <table class="layui-table" lay-skin="line">
			<thead>
				<tr>
					<th width="100px">名次</th>
					<th width="100px">学生id</th>
					<th width="100px">正确题数</th>
					<th width="100px">做题数</th>
					<th width="100px">正确率</th>
					
				</tr> 				      
			</thead>
			<tbody>
									  	
				<tr>
					<td>1</td>
						<td>
							<a href="#">张三</a>	
						</td>
					<td>40</td>
					<td>80</td>
					<td>50%</td>
					
				</tr>
									   
				<tr>
					<td>2</td>
						<td>
							<a>张三</a>	
						</td>
					<td>40</td>
					<td>80</td>
					<td>50%</td>
					
				</tr>
									    
									    
				<tr>
					<td>3</td>
						<td>
							<a>张三</a>	
						</td>
					<td>40</td>
					<td>80</td>
					<td>50%</td>
					</tr>
									    
					<tr>
						<td>4</td>
						<td>
							<a>张三</a>	
						</td>
					<td>40</td>
					<td>80</td>
					<td>50%</td>
						
					</tr>
									    
									    
			</tbody>
		</table> 
	</div>
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
	<!-- 网站底部 开始 -->
	<div class="footer">
  		<%@include file="footer.jsp" %>
  </div>
</body>
</html>