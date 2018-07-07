<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	#layui-card-header{
		font-size:24px;
		font-weight:600;
		color:#110c0ca6;
	}
	#layui-card-header1{
		font-size: 18px;
		font-weight:500;
		color:#3091f2;
	}
</style>
	<%@include file="../common/headmeta.jsp"%>
<title>答题</title>
</head>
<body style="background:#eee">
  <!--头部--> 
  <div class="header"> 
	<%@include file="header.jsp" %>
  </div> 
  
  
  
  <!-- 中间内容部分 -->
	<div class="bbody" style="display:flex;">
	
	
	<!-- 左 -->
		<div class="answer-left">
		<!-- 题目显示区域 -->
			<div class="answer-topic">
				<!-- 题目 -->
				<div class="topic-tittle">
					<div class="layui-card">
				        <div class="layui-card-header" style="float:left;" id="layui-card-header">题目</div>
				        <div class="layui-card-body" style="margin-left:50px;font-size:18px;line-height:140%">
				          	${topic.title }
				        </div>
			      	</div>
				</div>
				
				<!-- 描述 -->
				<div class="topic-message">
					<div class="layui-card">
				        <div class="layui-card-header" id="layui-card-header1">题目描述</div>
				        <div class="layui-card-body">
				          	${topic.description}
				        </div>
			        </div>
				</div>
				
				
				<!-- 输入 -->
				<div class="topic-message">
					<div class="layui-card">
				        <div class="layui-card-header" id="layui-card-header1">输入要求</div>
				        <div class="layui-card-body">
				          	${topic.input }
				        </div>
			      	</div>
				
				</div>
					<!-- 示例 -->
					<div class="topic-message">
						<div class="layui-card">
				        <div class="layui-card-header" id="layui-card-header1">输入示例</div>
				        <div class="layui-card-body">
				          	${topic.input }
				        </div>
				      </div>
					</div>
					
				<!-- 输出 -->	
				<div class="topic-message">
					<div class="layui-card">
				        <div class="layui-card-header" id="layui-card-header1">输出要求</div>
				        <div class="layui-card-body">
				          	${topic.output }
				        </div>
			      	</div>
				</div>
					<!-- 输出 -->
					<div class="topic-message">
						<div class="layui-card">
					        <div class="layui-card-header" id="layui-card-header1">输出示例</div>
					        <div class="layui-card-body">
					          	${topic.output }
					        </div>
					      </div>
					</div>
			</div>




		<!-- 弹出框、提交区域 -->

		</div>

	<!-- 右 -->
		<div class="answer-right">
					<div class="topic-message">
						<div class="layui-card">
					        <div class="layui-card-header" id="layui-card-header">提交记录</div>
					        	<ul>
					        		<li>
					        			
					        		</li>
					        	</ul>
					        
					      </div>
					</div>
					<div class="topic-message">
						<div class="layui-card">
					        <div class="layui-card-header" id="layui-card-header">题目信息</div>
					        <ul class="layui-card-body" style="padding:0;font-size:17px; ">
					          	<li >
					          		<span >ID</span>
					        		<span style="float:right;">1</span>
					          	</li>
					          	<li >
					          		<span >Time Limit</span>
					        		<span style="float:right;">12000MS</span>
					          	</li>
					          	<li >
					          		<span >Memory Limit</span>
					        		<span style="float:right;">32MB</span>
					          	</li>
					          	<li >
					          		<span >Created By</span>
					        		<span style="float:right;">root</span>
					          	</li>
					          	<li >
					          		<span >Level</span>
					        		<span style="float:right;">Mid</span>
					          	</li>
					          	<li >
					          		<span >Tags</span>
					        		<span style="float:right;">Show</span>
					          	</li>
					        </ul>
					      </div>
					</div>
					<div class="topic-message">
						<div class="layui-card">
					        <div class="layui-card-header" id="layui-card-header">做题情况</div>
					        <div class="layui-card-body" style="padding:0">
					          	<ul>
					          		<li>
					          			<span >AC</span>
					        		<span style="float:right;">WA</span>
					          		</li>
					          		<li>
					          			<span >50%</span>
					        		<span style="float:right;">50%</span>
					          		</li>
					          	</ul>
					        </div>
					      </div>
					</div>
		
		</div>
		
		
		
		
  </div>
  	<!-- 弹出代码编辑页面按钮 -->
  		<div style="write-answer-div">
  		<script>
			layui.use('layer', function(){});
		</script>
  		<script>
		  function writeanswer(){
			    layer.open({
			    type: 2,
			    title: '提交你的代码',
			    shadeClose: false,
			     shade: 0.8,
			    area: ['1200px', '80%'],//宽 高
			    content: 'writedemo.jsp?pid=${topic.topicId }' //弹窗iframe的url
				});
			}
		</script>
			<button class="layui-btn layui-btn-warm layui-btn-radius" 
				id="answer-submit-btn" onclick="writeanswer()">
				提交代码
			</button>
		</div>
  
  
<!-- 网站底部 开始 --> 
  <div class="footer">
  	<%@include file="footer.jsp" %>
  </div>

  
</body>
</html>