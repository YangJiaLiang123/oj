<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
                  <link rel="stylesheet" href="../layui/css/layui.css" media="all" />
                  <link rel="stylesheet" href="new/css/detail.css" media="all" />
            <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
            <link rel="stylesheet" href="new/css/common.css" media="all" />
            <style type="text/css" media="screen">
                legend{
                    color: blue;
                }
            </style>
    </head>
    <body>
    <div>
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend style="color:black;">题目</legend></fieldset>

            <p>${topic.title}</p>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>题目描述</legend></fieldset>

            <p>${topic.description}</p>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>输入要求</legend></fieldset>

            <p>${topic.input}</p>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>输入示例</legend></fieldset>

            <p>${topic.sampleInput}</p>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>输出要求</legend></fieldset>

            <p>${topic.output}</p>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>输出示例</legend></fieldset>

        <p>${topic.sampleOutput}</p>
    </div>

    <div class="sub">
        <button id="sub" class="layui-btn layui-btn-lg layui-btn-radius  layui-btn-normal">
          <i class="layui-icon">&#xe608;</i> 提交代码
        </button>
    </div>
    <script src="../layui/layui.js"></script>
    <script type="text/javascript">
        layui.use(['table','layer'], function(){
              var table = layui.table;
              var layer = layui.layer;
        })
        $(document).ready(function(){
            $("#sub").click(function() {
                  layer.open({
                    type: 2
                    ,title: 'sub'
                    ,area: ['500px', '600px']
                    ,content: 'new/page/sub.jsp?pid=${topic.topicId}' //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                  }); 
            });
        });
    </script>
    </body>
</html>