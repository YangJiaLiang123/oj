<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>河北师大OJ平台</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta http-equiv="Access-Control-Allow-Origin" content="*">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <!-- <link rel="icon" href="favicon.ico"> -->

        <script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.7.2.min.js"></script>

        <link rel="stylesheet" href="layui/css/layui.css" media="all" />
        <link rel="stylesheet" href="css/index.css" media="all" />
        <link rel="stylesheet" href="css/common.css" media="all" />
        <!-- <link rel="stylesheet" href="../../css/font_eolqem241z66flxr.css" media="all" />-->
        <!-- <link rel="stylesheet" href="css/main.css" media="all" />--></head>
    
    <body class="main_body">
        <div class="layui-layout layui-layout-admin">
            <!-- 顶部 -->
            <div id="header" class="layui-header">
                <div class="layui-row content">
                    <div class="layui-col-xs8 layui-col-sm8 layui-col-md8">
                        <div class="logo_div">
                            <img  class="logo layui-circle" src="img/logo.jpg" alt=""></div>
                        <div class="title">
                            <p>Heibei Normal University Online Judge System</p>
                            <p>河北师大OJ平台</p>
                        </div>
                    </div>
                    <div class="layui-col-xs4 layui-col-sm4 layui-col-md4">
                        <div class="user-info">
                            <ul class="layui-nav top_menu">
                                <li class="layui-nav-item" pc>
                                    <c:if test="${sessionScope.username==null}">
                                        <a href="javascript:;">
                                            <img src="img/logo.jpg" class="layui-circle" width="35" height="35">
                                            <cite>尚未登陆</cite></a>
                                        <dl class="layui-nav-child">
                                            <dd id="login">
                                                <a href="javascript:;" data-url="">
                                                    <cite>登陆</cite></a>
                                            </dd>
                                            <dd id="register">
                                                <a href="javascript:;" data-url="page/user/userInfo.html">
                                                    <cite>注册</cite></a>
                                            </dd>
                                            <dd>
                                                <a href="javascript:;" data-url="page/user/changePwd.html">
                                                    <cite>忘记密码</cite></a>
                                            </dd>
                                            <dd>
                                                <a href="javascript:;">
                                                    <cite>其他帮助</cite></a>
                                            </dd>
                                        </dl>
                                    </c:if>
                                    <c:if test="${sessionScope.username!=null}">
                                        <a href="javascript:;">
                                            <img src="img/logo.jpg" class="layui-circle" width="35" height="35">
                                            <c:if test="${sessionScope.usertype=='2'}">
                                            <cite>你好,${sessionScope.username}老师</cite></a>
                                            </c:if>
                                            <c:if test="${sessionScope.usertype!='1'}">
                                                <cite>你好,${sessionScope.username}</cite></a>
                                            </c:if>
                                        <dl class="layui-nav-child">
                                            <dd id="info">
                                                <a href="javascript:;" data-url="">
                                                    <cite>个人信息</cite></a>
                                            </dd>
                                            <dd>
                                                <a href="javascript:;" data-url="page/user/userInfo.html">
                                                    <cite>我的提交</cite></a>
                                            </dd>
                                            <dd>
                                                <a href="logout.do">
                                                    <cite>注销</cite></a>
                                            </dd>
                                        </dl>
                                    </c:if>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 左侧导航 -->
            <div class="layui-side layui-bg-black">
                <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
                    <legend>你好,XXX</legend></fieldset>
                <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
                    <li class="layui-nav-item">
                        <a href="">
                            <i class="layui-icon layui-icon-home"></i>首页</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="layui-icon layui-icon-code-circle"></i>问题</a>
                        <dl class="layui-nav-child">
                            <dd id="problems">
                                <a href="javascript:;">题库</a></dd>
                            <dd>
                                <a href="javascript:;">竞赛</a></dd>
                            <dd id="state">
                                <a href="javascript:;">提交状态</a>
                            </dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">
                            <i class="layui-icon layui-icon-reply-fill"></i>讨论区</a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="">讨论版</a></dd>
                            <dd>
                                <a href="">博客</a></dd>
                            <dd>
                                <a href="">资源</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="">
                            <i class="layui-icon layui-icon-list"></i>排名</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="">
                            <i class="layui-icon layui-icon-survey"></i>记录</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="">
                            <i class="layui-icon layui-icon-set-sm"></i>系统</a>
                    </li>
                </ul>
            </div>
            <!-- 右侧内容 -->
            <div id="main" class="layui-body layui-form">
                <iframe id="main_frame" class="main" src="page/main.html" frameborder="no" border="0" marginwidth="0"></iframe>
            </div>
            <!-- 底部 -->
            <div class="layui-footer footer">XXXXXXXXXXXXXXXXXXXXXXXXX</div></div>
        <script src="layui/layui.all.js" charset="utf-8"></script>

        <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
        <script>layui.use('element',
            function() {
                var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
                //监听导航点击
                element.on('nav(demo)',
                function(elem) {
                    //console.log(elem)
                    layer.msg(elem.text());
                });

            });</script>

            <script src="js/header.js"></script>
            <script src="js/index.js"></script>
    </body>

</html>