<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MySQL 연결 드라이버 테스트</title>
</head>
<body>
	<h1> 예제 모음집 ------------------- </h1>
	<button type="button" onclick="location.href='memo_list.jsp'"> 메모 예제 </button>
	
	<%
		String jdbcUrl = "jdbc:mysql://localhost:3306/spring";
		String dbId = "spring";
		String dbPwd = "spring";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
			out.println("MySQL 연결 성공");
		}
		catch (Exception ex)
		{
			out.println("연결 오류입니다. 오류 메시지 : " + ex.getMessage());
		}
	%>
</body>
</html>