<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
          <link rel="stylesheet" href="../layui/css/layui.css" media="all">
          <link rel="stylesheet" href="../css/question.css" media="all">
        <link rel="stylesheet" href="../css/common.css" media="all" />
            <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    </head>
    <body>
    <!-- url:'www.layui.com/demo/table/user/' -->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend id="titlelist">题目列表</legend></fieldset>

        <table class="layui-hide" id="table" lay-filter="demo"></table>

        <script src="../layui/layui.js"></script>

        <script type="text/html" id="barDemo">
          <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="sub">详情</a>
        </script>

        <script>
            layui.use(['table','layer'], function(){
              var table = layui.table;
              var layer = layui.layer;

              table.render({
                elem: '#table'
                ,url:'http://localhost:8080/topic/topic.do'
                ,cols: [[
                  {field:'id', width:80, title: 'id', sort: true}
                  ,{field:'title', width:120, title: 'title'}
                  ,{field:'difficult', title: 'difficult', sort: true,minWidth: 150}
                  ,{field:'pass', width:100, title: 'pass'}
                  ,{field:'rast',width:100,title: 'rast'}
                  ,{title:'op',width:100, align:'center', toolbar: '#barDemo'}
                ]]
                ,page: true
                ,even: true 
                ,size: 'sm' 
              });

              //监听工具条
              table.on('tool(demo)', function(obj){
                var data = obj.data;
                if(obj.event === 'sub'){
                  parent.$("#main_frame").attr('src','../doanswer.do?id='+data.id);
                }
              });
              
            });

        </script>

    </body>
</html>