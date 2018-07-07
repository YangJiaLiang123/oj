<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- <script src="../js/monaco-editor/min/vs/loader.js"></script> -->
        <script src="http://cdn.bootcss.com/ace/1.3.3/ace.js"></script>
        <script src="http://cdn.bootcss.com/ace/1.3.3/ext-language_tools.js"></script>
        <!-- <script src="http://cdn.bootcss.com/ace/1.3.3/ext-old_ie.js"></script> -->
        <!-- <script src="http://cdn.bootcss.com/ace/1.3.3/theme-monokai.js"></script> -->

        <link rel="stylesheet" href="../layui/css/layui.css" media="all">
        <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
        <script src="../layui/layui.js"></script>
        <style type="text/css" media="screen">
            #btn button{margin-left: 0}
        </style>
        <link rel="stylesheet" href="../css/common.css" media="all" />
    </head>
    <body>
    <div>语言:<select id="selectLang" name="lang" lay-verify="">
        <option value="0" disabled>JAVA</option>
        <option value="1" selected>C</option>
        <option value="2">C++</option>
        <option value="3" disabled>Python</option>
    </select></div>

<pre id="editorDiv" class="ace_editor" style="min-height:400px;font-size:22px;border:2px solid gray;"><textarea class="ace_text-input">
int main(void){
    return 0;
}</textarea></pre>

    <script>
        function sub() {
            // editor.getValue();//获取内容
            console.log(editor.getValue());
            $("#src").val(editor.getValue());
            $("#language").val($("#selectLang").val());
            return true;
        }
    </script>
    
    <form action="../../judgeServer.do" method="post" accept-charset="utf-8" onsubmit="return sub()">
        <input type="text" name="sid" value="${sessionScope.login_id}">
        <input type="text" name="pid" value="${param.pid}">
        <input id="src" type="hidden" name="src" value="">
        <input id="language" type="hidden" name="language" value="">
        <div id="btn">
            <button class="layui-btn layui-btn-fluid layui-btn-radius" lay-submit="">提交</button>
            <button class="layui-btn layui-btn-fluid layui-btn-radius">测试运行</button>
            <button class="layui-btn layui-btn-fluid layui-btn-radius">状态</button>
        </div>
    </form>

    <script>

        var editor = ace.edit("editorDiv");

            language = "c_cpp";
            editor.session.setMode("ace/mode/" + language);

            // //设置代码语言，对应mode-*.js文件
            // editor.session.setMode("ace/mode/javascript");
            editor.setTheme("ace/theme/clouds");
            //设置打印线是否显示
            editor.setShowPrintMargin(false);
            //设置是否只读
            // editor.setReadOnly(true);
            // editor.setHighlightActiveLine(false);

            // 以下部分是设置输入代码提示的，如果不需要可以不用引用ext-language_tools.js
            ace.require("ace/ext/language_tools");
            editor.setOptions({
                enableBasicAutocompletion: true,
                enableSnippets: true,
                enableLiveAutocompletion: true
            });

    </script>

    </body>
</html>