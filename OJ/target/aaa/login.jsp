<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="layui/css/layui.css" media="all" />
        <link rel="stylesheet" href="css/login.css" media="all" />
    </head>
    <body style="width:315px;margin-top:10px;">
        <form class="layui-form" action="login.do" method="post" accept-charset="utf-8">
            <div class="layui-word-aux" style="">${error}</div>
             <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" name="studentname" value="${student.studentname }" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                </div>
              </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码框</label>
                <div class="layui-input-block">
                    <input type="password" name="password" value="${student.password }" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">验证码</label>
                <div class="layui-input-block">
                    <input style="" type="text" name="verification" required lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                    <img src="verification.jsp" height="35px" style="margin-top: 10px" onclick = "this.src='../verification.jsp?'+Math.random()"/>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="formDemo">登陆</button>
                </div>
            </div>

            <div class="layui-form-item more">
                <div class="layui-input-block">
                    <button style="width: 40%;float: left;" class="layui-btn" >注册</button>
                    <button style="width: 50%;float: left;margin-left: 10%" class="layui-btn layui-btn-primary layui-col-md1">忘记密码</button>
                </div>
            </div>

        </form>
        <!-- <script src=""></script> -->
    </body>
</html>