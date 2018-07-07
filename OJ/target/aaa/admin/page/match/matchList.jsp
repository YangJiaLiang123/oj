<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote news_search">
		<div class="layui-inline">
		    <div class="layui-input-inline">
		    	<input type="text" value="" placeholder="请输入关键字" class="layui-input search_input">
		    </div>
		    <a class="layui-btn search_btn">查询</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-normal matchAdd_btn">添加比赛</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-danger batchDel">批量删除</a>
		</div>
		
		<div class="layui-inline">
			<div class="layui-form-mid layui-word-aux">本页面刷新后除新添加的文章外所有操作无效，关闭页面所有数据重置</div>
		</div>
	</blockquote>
	<div class="layui-form news_list">
	  	<table class="layui-table">
		    <colgroup>
				<col width="2%">
				<col width="5%">
				<col width="15%">
				<col width="10%">
				<col width="5%">
				<col width="10%">
				<col width="12%">
				<col width="6%">
				<col width="6%">
				<col width="10%">
		    </colgroup>
		    <thead>
				<tr>
					<th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"></th>
					<th>ID</th>
					<th>比赛名称</th>
					<th>比赛描述</th>
					<th>难度</th>
					<th>举办方</th>
					<th>时间</th>
					<th>时长</th>
					<th>题目</th>
					<th>操作</th>
				</tr> 
		    </thead>
		    <tbody>
		    	<tr>
		    		<td>
		    			<input type="checkbox" name="checked" lay-skin="primary" lay-filter="choose">
		    			<div class="layui-unselect layui-form-checkbox" lay-skin="primary"><i class="layui-icon"> </i></div>
		    		</td>
		    		<td></td>
		    		<td></td>
		    		<td></td>
		    		<td></td>
		    		<td></td>
		    		<td></td>
		    		<td></td>
		    		<td>
		    			<a class="layui-btn layui-btn-normal layui-btn-mini" href="matchTopicList.jsp">
		    				<i class="layui-icon"></i>题目列表
		    			</a>
		    		</td>
		    		<td><a class="layui-btn layui-btn-mini" href="changeMatchInf.jsp">
		    				<i class="iconfont icon-edit"></i>  修改
		    			</a><a class="layui-btn layui-btn-danger layui-btn-mini ">
		    				<i class="layui-icon"></i>        删除
		    			</a>
		    		</td>
		    		
		    		
		    	</tr>
		    </tbody>
		    
		    
		</table>
	</div>
	
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="matchList.js"></script>
</body>
</html>