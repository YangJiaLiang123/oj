<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<%@include file="../common/headmeta.jsp"%>
	
	<style>
	.topic-doanswer-btn{
	    padding: 5px 10px 5px 10px;
	    background: orange;
	    color: white;
	    border-radius: 10%;
	    /*page.css 61 */    
	    }
	</style>
<title>题目</title>
<style>
</style>

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
    var shref="init.do?currentPage="+turnPage;
    window.location.href=shref;
}
</script>   


<style>
	.topiclevelchage{
		border: 1px solid #ccc;
	    width: 65px;
	    padding: 5px 5px;
	    margin-left: 10px;
	    color: black;
	    background: white;
		}
		.topiclevelchage:hover{
			background:orange;
			color:white;
			border: 1px solid orange;
		}
</style>
</head>
<body>
  <!--头部--> 
  <div class="header"> 
	<%@include file="header.jsp" %>
  </div>  
  <!-- 中间内容部分 -->
  <div class="bbody">
	 <!-- 开始 --> 

	<div class="about_cont_a">
     <div class="about_cont_aa"></div> 
   	<div class="about_cont_vc"></div> 
   <div class="main"> 
    <div class="about_conta_top"> 
    
     <div class="about_conta_topl"> 
      <!--  <img width="382" height="60" src="images/pro_a.jpg" /> -->
      <p style="font-size:50px">题目列表</p>
     </div> 
     
     <div class="about_conta_topr"> 
     	<!-- 面包屑 -->
	      <div class="about_conta_toprt"> 
	       <span>当前位置：</span> 
	       <a href="index.html">主页</a> &gt; 
	       <a href="website_build.html">题目列表</a> &gt; 
	      </div> 
      	<!-- 分类 -->
	      <div class="about_conta_toprb a" style="width:705px"> 
	       <a href="dificulty.do?a=1" target="_self" >简单</a> 
	       <a href="dificulty.do?a=2" target="_self" >中等</a> 
	       <a href="dificulty.do?a=3" target="_self" >困难</a> 
	       <a href="init.do" target="_self" >全部</a> 
	       <form action="init.do">
	       <input type="text" name="string" lay-verify="required" 
	       		placeholder="题目/ID/作者" autocomplete="off" 
	       		class="layui-input" id="topics-search-input">
	       <button type="submit" target="_self" class="topiclevelchage">
	       		搜索</button>
	       </form>
	      </div> 
     </div> 
    </div> 
   
    <!-- 题目显示表格 -->
    <center>
    <div style="margin-top:50px;">
			<table class="layui-table" lay-skin="line">
			  <thead>
			    <tr>
			      <th width="10%">编号</th>
			      <th width="40%">题目</th>
			      <th width="10%">难度</th>
			      <th width="10%">通过</th>
			      <th width="10%">通过率</th>
			      
			    </tr> 
			  </thead>
			  <tbody>
			  	
			  <c:forEach items="${invList}" var="topic" >
		      <tr>
			      <td>${topic.topicId}</td> 
			      <td>${topic.title}</td> 
			      <td>${topic.dificulty}</td> 
			      <td>${topic.accepted}</td>
			      <td>${topic.ratio}</td>
			      <td><a href="doanswer.do?id=${topic.topicId }" class="topic-doanswer-btn">答题</a></td>
              </tr> 
              </c:forEach> 
              </tbody>
              </table> 
              
              <div class="fenye">  
			   <a class="fenyea" href="${href }?a=${a }&&currentPage=0" >首页</a> 
			   <a class="fenyea" href="${href }?a=${a }&&currentPage=${page.currentPage-1}" onclick="return checkFirst()">上一页</a> 
			   <label class="fenyelabel">当前：第${page.currentPage}页</label>
			   <a class="fenyea" href="${href }?a=${a }&&currentPage=${page.currentPage+1}" onclick="return checkNext()">下一页</a> 
			   <a class="fenyea" href="${href }?a=${a }&&string=${string }&&currentPage=${page.totalPage}">尾页</a> 
			   <label style="margin:0 15px">共${page.totalPage}页 </label>
			   	<span style="margin-left: 30px;">跳转到:</span>
			   <input class="fenyeinput" type="text" style="width:30px" id="turnPage" />页 
			   <input class="fenyebtn" type="button" onclick="startTurn()" value="跳转" /> 
			   <label class="fenyelabel">&nbsp;&nbsp;&nbsp;共${page.totalRows}条</label> 
		      </div>
   </div> 
   </center>
   <!-- 题目显示表格结束 -->
</div>
</div>
</div>
  
   <!-- 网站底部 开始 --> 
  <div class="footer">
  	<%@include file="footer.jsp" %>
  </div>
  
</body>
</html>