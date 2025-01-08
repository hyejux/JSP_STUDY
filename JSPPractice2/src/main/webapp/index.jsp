<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 문법 </title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	
	<div> JSP 기본 문법  </div>
	<button type="button" onclick = "location.href='JSP_ex1.jsp'"> 스크립트릿 (Sciptlet) </button>
	<button type="button" onclick = "location.href='JSP_ex2.jsp'"> 디렉티브 (Directive) </button>
	
	<form action="JSP_ex3.jsp" method="post">
		<input type="text" id="name" name="name"  placeholder="다음 페이지로 갈 값이에요">
		<button type="submit" id="btn"> JSP 내장 객체 </button>
	</form>
	
	<form action="JSP_ex4.jsp" method="post">
		<input type="text" id="id" name="id"  placeholder="아무 id 입력해봐요!">
		<button type="submit" id="btn2"> 표현 언어 (EL) </button>
	
	</form>
	
	<button type="button" onclick = "location.href='JSP_ex5.jsp'"> 액션 태그 (action tag) </button>
	
	<button type="button" onclick = "location.href='JSP_ex6.jsp'"> 태그라이브러리&커스텀태그 </button>
	
	<hr>
	<button type="button" onclick = "location.href='JSP_form_ex1.jsp'"> JSP Form 처리 </button>
	<button type="button" onclick = "location.href='JSP_url_ex1.jsp'"> JSP URL 매핑 </button>
	<button type="button" onclick = "location.href='JSP_JavaBeans_ex1.jsp'"> JAVA Beans </button>
	
	<hr>
	<button type="button" onclick = "location.href='JSP_JDBC_ex1.jsp'"> JSP JDBC 테스트 (SELECT)</button>
	<button type="button" onclick = "location.href='JSP_JDBC_ex2.jsp'"> JSP JDBC 테스트 (INSERT)</button>
	
	<hr>
	<button type="button" onclick = "location.href='JSP_MVC1_ex1.jsp'"> MVC1 패턴과 DAO </button>
	<button type="button" onclick = "location.href='JSP_MVC2_ex1.jsp'"> MVC2 패턴 </button>
	
	


<script>
 const name = document.querySelector("#name");
 const btn = document.querySelector("#btn");
 
 const id = document.querySelector("#id");
 const btn2 = document.querySelector("#btn2");
 
 
 btn.addEventListener('click', function() {
	 if(name.value === ""){
		 alert("값을 입력해주세요");
		 event.preventDefault();
	 } else {
	location.href='JSP_ex3.jsp';
	 }
 });
 
 btn2.addEventListener('click', function() {
	 if(id.value === ""){
		 alert("값을 입력해주세요");
		 event.preventDefault();
	 } else {
/* 	location.href='JSP_ex4.jsp'; */
	 }
 })

</script>

</body>
</html>