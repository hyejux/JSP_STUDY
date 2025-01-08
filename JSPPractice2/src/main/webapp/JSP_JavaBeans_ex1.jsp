<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.beans.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 자바빈 과 JSP </title>
</head>
<body>

<div> 자바빈 </div>
<div> JavaBeans는 데이터를 캡슐화한 클래스 </div>
<div> JSP 와 연동하여 데이터를 주고 받을 수 있다. </div>

<div> 다음 규칙을 따라야 합니다:
기본 생성자를 가져야 한다.
private 필드를 사용하고, public Getter/Setter를 제공해야 한다.
Serializable 인터페이스를 구현하는 경우가 많다.</div>
<%
	User user = new User();
	user.setName("홍길동");
	
	request.setAttribute("user", user);
%>


<div> 테스트 : <%= ((User) request.getAttribute("user")).getName() %></div>
<div> 테스트 : ${user} | ${user.name} </div>
<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 메인으로 가기  </button>

</body>
</html>