<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="../common/headmeta.jsp"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body style="width:1200px;background:#eee">

<!-- 上部选择语言类型 -->
<div class="writedemo-top-language">
	<form class="" action="judgeServer.do" method="post"  onsubmit="return subtime()">
		<input name="sid" value="${sessionScope.login_id}">
		<input name="pid" value="${param.pid}" >
		<div class="choice-language">
			<div class="choice-text">
				<label style="font-size:18px">语言选择</label>
			</div>
			<div class="" >
				<select class="choice-language-select" name="language" >
					<option value="0">JAVA</option>
					<option value="1" selected="">C</option>
					<option value="2">C++</option>
					<option value="3">PHP</option>
					<option value="4">JAVASCRIPT</option>
				</select>
			</div>
		</div>

		<!-- 中部提交代码区域 -->
		<div class="writedemo-middle-demo">
			<div class="demo-in">
			<textarea rows="24" cols="40" class="deme-area" name="src">
				待修改为左侧带有行数提示的代码输入区域
				是否提供保存功能？
			</textarea>
			</div>
		</div>

		<!-- 底部提交按钮 -->
		<div class="writedemo-bottom-submit">
			<div class="demo-submit-div">
				<button class="demo-submit-btn">提交</button>
			</div>

		</div>

	</form>

</div>


</body>
</html>