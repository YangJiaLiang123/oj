<%@page import="com.etc.bean.AnswerInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../common/headmeta.jsp"%>
<html>
<head>
<script type="text/javascript">   
    function checkFirst(){
    	if(${page.currentPage>1}){      
           return true;
         }
         layer.alert("已到页首,无法加载更多");
       return false;
    }  
    function checkNext(){  
    if(${page.currentPage<page.totalPage}){   
      return true;   
    }
    layer.alert("已到页尾，无法加载更多页");
    return false;    
    }   
    function startTurn(){   
    var turnPage=document.getElementById("turnPage").value; 
    if(turnPage>${page.totalPage}){   
    	layer.alert("对不起已超过最大页数");    
      return false;   
    }   
    var shref="selectAll.do?currentPage="+turnPage;
    window.location.href=shref;
}
</script>
<style type="text/css">
.status {
	color: white;
	padding: 2px 6px 3px 6px;
	border-radius: 4px;
}

/*
		状态选择框:相对定位
	*/
#choice-status {
	width: 66%;
	position: relative;
	top: 82px;
	left: 55%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问题追踪</title>
</head>
<body>
	<!--头部-->
	<div class="header">
		<%@include file="header.jsp"%>
	</div>
	<!-- 改变和顶部距离(百分比适应) -->
	<div class="bbody" style="margin-top: 3%;"></div>

	<!-- 上部提示与搜索 -->
	<div class="about_cont_a">
		<div class="main">
			<div class="about_conta_top">

				<div class="about_conta_topl">
					<!--  <img width="382" height="60" src="images/pro_a.jpg" /> -->
					<p style="font-size: 50px">Status</p>
				</div>
				<!-- 筛选状态 -->
				<div id="choice-status">
					<select class="choice-status">
						<option value="0">Accept</option>
						<option value="1">Time Limit Exceeded</option>
						<option value="2">Memory Limit Exceeded</option>
						<option value="3">Runtime Error</option>
						<option value="4">System Error</option>
						<option value="5">Pending</option>
						<option value="6">Judging</option>
						<option value="7">Partial Accepted</option>
						<option value="8">Compile Error</option>
						<option value="9">Wrong Answer</option>
					</select>
				</div>
				<div class="about_conta_topr">

					<!-- 面包屑 -->
					<div class="about_conta_toprt" style="margin-top: 15px;">
						<span>当前位置：</span> <a href="index.jsp">主页</a> &gt; <a href="#">答题记录</a>
						&gt;
					</div>

					<!-- 搜索 -->
					<div class="about_conta_toprb a">
						<input type="text" name="username" lay-verify="required"
							placeholder="题目/ID/作者" autocomplete="off" class="layui-input"
							id="topics-search-input">
						<!--改:为搜索边框加了样式 -->
						<a href="/jzbj/15.html" target="_self"
							style="border-radius: 5px; border-bottom-left-radius: 0px; border-top-left-radius: 0px; width: 65px; margin-left: 0px;">搜索</a>
					</div>
				</div>
			</div>
			<!-- 标签1内容：待完成 -->
			<div class="layui-tab-item layui-show">

				<!-- 题目内容 -->
				<div>

					<table class="layui-table" lay-skin="line">
						<thead>
							<tr>
								<th width="100px">学生id</th>
								<th width="100px">题目id</th>
								<th width="100px">做题情况</th>
								<th width="100px">内存</th>
								<th width="100px">完成时间</th>
								<th width="100px">所用语言</th>
								<th width="100px">提交时间</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${invList }" var="answerInfo">
								<tr onclick="layer.alert('aaa')">
									<td>${answerInfo.studnet.id }</td>
									<td>${answerInfo.topic.topicId }</td>
									<td><c:choose>
											<c:when test="${answerInfo.situation==-2}">
												<span class="status" style="background: green">CompileError</span>
											</c:when>
											<c:when test="${answerInfo.situation==-1}">
												<span class="status" style="background: blue">WrongAnswer</span>
											</c:when>
											<c:when test="${answerInfo.situation==0}">
												<span class="status" style="background: yellow">Accepted</span>
											</c:when>
											<c:when test="${answerInfo.situation==1}">
												<span class="status" style="background: orange">TimeLimitExceeded</span>
											</c:when>
											<c:when test="${answerInfo.situation==2}">
												<span class="status" style="background: red">MemoryLimitExceeded</span>
											</c:when>
											<c:when test="${answerInfo.situation==3}">
												<span class="status" style="background: purple">RuntimeError</span>
											</c:when>
											<c:when test="${answerInfo.situation==4}">
												<span class="status" style="background: black">SystemError</span>
											</c:when>


										</c:choose></td>
									<td>${answerInfo.memory}</td>
									<td>${answerInfo.presetTime}</td>
									<td>${answerInfo.language}</td>
									<td><fmt:formatDate type="both" dateStyle="short"
											timeStyle="short" value="${answerInfo.submitTime}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="fenye">
						<a class="fenyea" href="selectAll.do?currentPage=0">首页</a> <a
							class="fenyea"
							href="selectAll.do?currentPage=${page.currentPage-1}"
							onclick="return checkFirst()">上一页</a> <label class="fenyelabel">当前：第${page.currentPage}页</label>
						<a class="fenyea"
							href="selectAll.do?currentPage=${page.currentPage+1}"
							onclick="return checkNext()">下一页</a> <a class="fenyea"
							href="selectAll.do?currentPage=${page.totalPage}">尾页</a> <label
							style="margin: 0 15px">共${page.totalPage}页 </label> <span
							style="margin-left: 30px;">跳转到:</span> <input class="fenyeinput"
							type="text" style="width: 30px" id="turnPage" />页 <input
							class="fenyebtn" type="button" onclick="startTurn()" value="跳转" />
						<label class="fenyelabel">&nbsp;&nbsp;&nbsp;共${page.totalRows}条</label>
					</div>
				</div>
				<!-- 分页 -->

			</div>
		</div>
</body>
<!-- 网站底部 开始 -->
<div class="footer">
	<%@include file="footer.jsp"%>
</div>
</html>