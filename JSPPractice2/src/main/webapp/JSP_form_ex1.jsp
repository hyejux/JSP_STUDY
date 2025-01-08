<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 폼 데이터 처리</title>
</head>
<body>

	<div class="info"> 폼데이터가 action 페이지로 넘어가게 된다 . </div>
	<form action="JSP_form_ex1_result.jsp" method="post">
		<label for="name"> 이름 </label>
		<input type="text" id="name" name="name">
		<button type="submit">전송</button>
	</form>
	
	<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 메인으로 가기  </button>
</body>
</html>