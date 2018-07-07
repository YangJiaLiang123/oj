<%--
  Created by IntelliJ IDEA.
  User: valhalla
  Date: 2018/6/13
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/common.css" media="all" />
    <script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" href="layui/css/layui.css" media="all" />
    <script src="layui/layui.js"></script>
</head>
<body>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;
    });
</script>
<form style="width: 90%;margin: 20px auto;" class="layui-form" action="register.do" method="post" accept-charset="utf-8">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input id="userName" type="text" name="studentname" value="${student.studentname }" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
            <span type="text" style="width:30%;height:20px;margin-left:20px;"></span>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">昵称</label>
        <div class="layui-input-block">
            <input id="nickName" type="text" name="nickname" value="${student.nickname }" required  lay-verify="required" placeholder="请输入昵称" autocomplete="off" class="layui-input">
            <span type="text" style="width:30%;height:20px;margin-left:20px;"></span>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input id="passWord" type="password" name="password" value="${student.password }" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            <span type="text" style="width:30%;height:20px;margin-left:20px;"></span>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">确认密码</label>
        <div class="layui-input-block">
            <input type="password" name="confirm" value="" required  lay-verify="required" placeholder="请确认密码" autocomplete="off" class="layui-input">
            <span type="text" style="width:30%;height:20px;margin-left:20px;"></span>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机号</label>
        <div class="layui-input-block">
            <input id="telephone" type="text" name="telephone" value="${student.telephone }" required  lay-verify="required" placeholder="请输入手机号" autocomplete="off" class="layui-input">
            <span type="text" style="width:30%;height:20px;margin-left:20px;"></span>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">邮箱</label>
        <div class="layui-input-block">
            <input id="email" type="text" name="email" value="${student.email }" required  lay-verify="required" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
            <span type="text" style="width:30%;height:20px;margin-left:20px;"></span>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">教师用户</label>
        <div class="layui-input-block">
            <input type="radio" name="radio" value="1" title="否" checked>
            <input type="radio" name="radio" value="2" title="是" disabled>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>


<script >
    console.log($("#nickName"));
    $("#nickName").blur(function(){
        $.ajax({
            type:"get",
            url:"NickName.do",
            async:true,
            dataType: 'text',
            data:{
                name:$('#nickName')[0].value,
            },success : function(data){
                console.log(data);
                if(data=="true"){
                    $('#nickName').next().html("该昵称可用");
                }
                if(data=="false1"){
                    $('#nickName').next().html("昵称不能为空");
                    $('#nickName')[0].focus();
                }
                if(data=="false"){
                    $('#nickName').next().html("该昵称已存在");
                    $('#nickName')[0].focus();
                }
            },error:function(XMLHttpRequest, textStatus, errorThrown){
                alert('未知异常');
            }
        });
    })
</script>



<script>
    console.log($("#userName"));
    $("#userName").blur(function(){
        $.ajax({
            type:"get",
            url:"verifyName.do",
            async:true,
            dataType: 'text',
            data:{
                name:$('#userName')[0].value,
            },success : function(data){
                console.log(data);
                if(data=="true"){
                    $('#userName').next().html("用户名可用");
                }
                if(data=="false1"){
                    $('#userName').next().html("用户名不能为空");
                    $('#userName')[0].focus();
                }
                if(data=="false"){
                    $('#userName').next().html("该用户名已存在");
                    $('#userName')[0].focus();
                }
            },error:function(XMLHttpRequest, textStatus, errorThrown){
                alert('未知异常');
            }
        });
    })
</script>

<script>
    console.log($("#passWord"));
    $("#passWord").blur(function(){
        $.ajax({
            type:"get",
            url:"passWord.do",
            async:true,
            dataType: 'text',
            data:{
                name:$('#passWord')[0].value,
            },success : function(data){
                console.log(data);
                if(data=="true"){
                    $('#passWord').next().html("");
                }
                if(data=="false1"){
                    $('#passWord').next().html("密码不能为空");
                    $('#passWord')[0].focus();
                }
                if(data=="false"){
                    $('#passWord').next().html("密码格式不正确");
                    $('#passWord')[0].focus();
                }
            },error:function(XMLHttpRequest, textStatus, errorThrown){
                alert('未知异常');
            }
        });
    })
</script>
<script>
    console.log($("#email"));
    $("#email").blur(function(){
        $.ajax({
            type:"get",
            url:"email.do",
            async:true,
            dataType: 'text',
            data:{
                name:$('#email')[0].value,
            },success : function(data){
                console.log(data);
                if(data=="true"){
                    $('#email').next().html("该邮箱可用");
                }
                if(data=="false1"){
                    $('#email').next().html("邮箱不能为空");
                    $('#email')[0].focus();
                }
                if(data=="false2"){
                    $('#email').next().html("该邮箱已存在");
                    $('#email')[0].focus();
                }
                if(data=="false"){
                    $('#email').next().html("邮箱不正确");
                    $('#email')[0].focus();
                }
            },error:function(XMLHttpRequest, textStatus, errorThrown){
                alert('未知异常');
            }
        });
    })
</script>
<script>
    console.log($("#telephone"));
    $("#telephone").blur(function(){
        $.ajax({
            type:"get",
            url:"telephone.do",
            async:true,
            dataType: 'text',
            data:{
                name:$('#telephone')[0].value,
            },success : function(data){
                console.log(data);
                if(data=="true"){
                    $('#telephone').next().html("该号码可用");
                }
                if(data=="false1"){
                    $('#telephone').next().html("手机号不能为空");
                    $('#telephone')[0].focus();
                }
                if(data=="false"){
                    $('#telephone').next().html("手机号无效");
                    $('#telephone')[0].focus();
                }
                if(data=="false2"){
                    $('#telephone').next().html("手机号已被使用");
                    $('#telephone')[0].focus();
                }
            },error:function(XMLHttpRequest, textStatus, errorThrown){
                alert('未知异常');
            }
        });
    })
</script>
</body>
</html>
