<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>题目列表</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="../../css/topic.css" media="all" />
	<link rel="stylesheet" href="../../css/user.css" media="all" />
	<link rel="stylesheet" href="../../css/fenye.css" media="all" /><!-- 分页 -->
	<script>
	function aa() {  
	     var bb = "";  
	     var temp = "";  
	     var a = document.getElementsByName("checked");  
	     for ( var i = 0; i < a.length; i++) {  
	     if (a[i].checked) {  
	     temp = a[i].value;  
	     bb = bb + "," +temp;  
	     }  
	     }  
	     document.getElementById("tempString").value = bb  
	     .substring(1, bb.length);  
	     }
	</script>
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote news_search">
		<div class="layui-inline">
		  <form action="selectTopic.do">
		    <div class="layui-input-inline">
		    	<input type="text" name="string" value="" placeholder="请输入关键字" class="layui-input">
		    </div>
		    <button class="layui-btn" type="submit">查询</button>
		  </form>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-normal" href="addTopic.jsp">添加题目</a>
		</div>
		<div class="layui-inline">
			<form  action="deleteAllTopics.do" >
		    <input type="hidden" id="tempString" name="tempString" value=""/>  
			<button class="layui-btn layui-btn-danger" onclick="aa();" type="submit">批量删除</button>
			</form>
		</div>
		
	</blockquote>
	<div class="layui-form news_list">
	  	<table class="layui-table">
		    <colgroup>
				<col width="2%">
				<col width="4%">
				<col width="15%">
				<col width="5%">
				<col width="8%">
				<col width="8%">
				<col width="6%">
				<col width="6%">
				<col width="7%">
				<col width="14%">
				<col width="13%">
		    </colgroup>
		    <thead>
				<tr>
					<th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"></th>
					<th>ID</th>
					<th>题目</th>
					<th>难度</th>
					<th>内存要求</th>
					<th>时间要求</th>
					<th>通过数</th>
					<th>通过率</th>
					<th>发布人</th>
					<th>发布时间</th>
					<th>操作</th>
				</tr> 
		    </thead>
		    <tbody>
		        <c:forEach items="${invList}" var="topic">
		    	<tr>
		    		<td>
		    			<input type="checkbox" name="checked" lay-skin="primary" lay-filter="choose" value="${topic.topicId }">
		    			<div class="layui-unselect layui-form-checkbox" lay-skin="primary"><i class="layui-icon"> </i></div>
		    		</td>
		    		<td>${topic.topicId }</td>
		    		<td>${topic.title }</td>
		    		<td>${topic.dificulty }</td>
		    		<td>${topic.memoryLimit }</td>
		    		<td>${topic.timeLimit }</td>
		    		<td>${topic.accepted }</td>
		    		<td>${topic.ratio }%</td>
		    		<td>${topic.author }</td>
		    		<td>	
		    		<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${topic.createDate}" />  
		    		</td>
		    		<td><a class="layui-btn layui-btn-mini" href="changeTopicInfo.do?id=${topic.topicId }">
		    				<i class="iconfont icon-edit"></i>  修改
		    			</a><a class="layui-btn layui-btn-danger layui-btn-mini news_del " href="deleteTopic.do?id=${topic.topicId }">
		    				<i class="layui-icon"></i>        删除
		    			</a>
		    		</td>
		    		
		    		
		    	</tr>
		    	</c:forEach>
		    </tbody>   
		</table>
		   <br /> 
		   <br /> 
		   <div class="fenye">  
			   <a class="fenyea" href="${href }?string=${string }&&currentPage=0" >首页</a> 
			   <a class="fenyea" href="${href }?currentPage=${page.currentPage-1}" onclick="return checkFirst()">上一页</a> 
			   <label class="fenyelabel">当前：第${page.currentPage}页</label>
			   <a class="fenyea" href="${href }?currentPage=${page.currentPage+1}" onclick="return checkNext()">下一页</a> 
			   <a class="fenyea" href="${href }?string=${string }&&currentPage=${page.totalPage}">尾页</a> 
			   <label style="margin:0 15px">共${page.totalPage}页 </label>
			   	<span style="margin-left: 30px;">跳转到:</span>
			   <input class="fenyeinput" type="text" style="width:30px" id="turnPage" />页 
			   <input class="fenyebtn" type="button" onclick="startTurn()" value="跳转" /> 
			   <label class="fenyelabel">&nbsp;&nbsp;&nbsp;共${page.totalRows}条</label> 
		   </div>
	</div>
	
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="topicList.js"></script>
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
    var shref="topicsList.do?currentPage="+turnPage;
    window.location.href=shref;
}
</script>   
</body>
</html>