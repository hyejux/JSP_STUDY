<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 데이터 결과</title>
</head>
<body>

<div> 입력된 이름 ${name} </div>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	out.println(name);
%>
	<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 메인으로 가기  </button>

</body>
</html>