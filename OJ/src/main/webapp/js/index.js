/* 
* @Author: anchen
* @Date:   2018-06-06 06:54:44
* @Last Modified by:   anchen
* @Last Modified time: 2018-06-08 08:55:52
*/

function problems(){
    $("#main_frame").attr('src','page/question.jsp');
}
function state(){
    $("#main_frame").attr('src','page/state.html');
}
$(document).ready(function(){
    $("#problems").click(problems);
    $("#state").click(state);
});
