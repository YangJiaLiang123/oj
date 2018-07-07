/* 
* @Author: anchen
* @Date:   2018-06-05 16:06:54
* @Last Modified by:   anchen
* @Last Modified time: 2018-06-06 07:00:46
*/
function login(){
    layer.open({
      type: 2, 
      area: ['370px','480px'],
      content: ['login.jsp', 'no']
    }); 
}
function register(){
    layer.open({
        type: 2,
        area: ['600px','500px'],
        content: ['register.jsp', 'no']
    });
}
function info(){
    $("#main_frame").attr('src','info.do');
}
// layui.use('form', function(){
//   var form = layui.form;
  
//   //监听提交
//   form.on('submit(formDemo)', function(data){
//     layer.msg(JSON.stringify(data.field));
//     return false;
//   });
// });

$(document).ready(function(){
    $("#login").click(login);
    $("#register").click(register);
    $("#info").click(info);
});
