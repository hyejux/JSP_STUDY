<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 태그라이브러리 JSTL 과 커스텀 태그 </title>
<link rel="stylesheet" type="text/css" href="css/style.css"> </link>
</head>
<body>
	<div class="point"> 커스텀 태그 </div>
	<div> : 개발자가 직접 정의한 태그로, JSP 페이지에서 특정 기능을 수행하도록 만드는 태그 (개발자가 직접 개발)  </div>
	<div class="point"> 태그 라이브러리 (JSTL)</div>
	<div>  자주 사용되는 것들을 표준화 해둔 태그 라이브러리 ex) JSTL </div>
	<div> JSTL 은 따로 설치가 필요하다. </div>
	<div> jakarta-taglibs-standard-1.1.2 jstl / standard*lib 에 추가해주기 !</div>
	 <%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
	<div> Core 라이브러리는  기본적인 라이브러리로 출력, 제어문, 반복문 같은 기능이 포함 </div>
	<hr>
		<% out.println("<div> 이건 스트립트릿 </div> "); %>
		<c:out value="이건 jstl"/>
		<%  
			request.setAttribute("data", "이건 EL");
			request.setAttribute("age", 31);
		%>
		 <div> ${data} </div>
		<c:out value="${data}"/> 
	
		<c:if test="true"> 무조건 실행됨 </c:if>
		<c:if test="${age >= 30}"> 30살이 넘었구나.. </c:if>

<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 뒤로가기 </button>
</body>
</html>