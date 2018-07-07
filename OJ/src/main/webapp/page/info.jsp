<%--
  Created by IntelliJ IDEA.
  User: valhalla
  Date: 2018/6/13
  Time: 7:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all" />
    <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    <link rel="stylesheet" href="../css/common.css" media="all" />
</head>
<body>
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">ID</label>
            <div class="layui-input-block">
                <input type="text" name="id" readonly="readonly" value="${student.id}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-block">
                <input type="text" name="studentname" readonly="readonly" value="${student.studentname}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="nickname" readonly="readonly" value="${student.nickname}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-block">
                <input type="text" name="email" readonly="readonly" value="${student.email}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-block">
                <input type="text" name="telephone" readonly="readonly" value="${student.telephone}" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">教师用户</label>
            <div class="layui-input-block">
                <c:if test="${sessionScope.usertype=='2'}">
                    <input type="checkbox" name="type" lay-skin="switch" lay-text="是|否" checked disabled>
                </c:if>
                <c:if test="${sessionScope.usertype!='2'}">
                    <input type="checkbox" name="type" lay-skin="switch" lay-text="是|否" disabled>
                </c:if>
            </div>
        </div>
    </form>
    <script src="../layui/layui.js"></script>
    <script>
        //Demo
        layui.use('form', function(){
            var form = layui.form;
        });
    </script>
</body>
</html>
