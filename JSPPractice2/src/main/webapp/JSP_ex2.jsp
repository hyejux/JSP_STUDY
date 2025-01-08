<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 디렉티브 소개</title>
<link rel="stylesheet" type="text/css" href="css/style.css"></link>
</head>
<body>


<div class="info">
<p>  JSP 페이지의 전반적인 설정을 정의하는데 사용됨 !! (속성 지정!)</p>
<p> page -> jsp 페이지 정보를 입력하기 위해 사용된다. </p>
<p> language | import | errorPage | contentType | pageEncoding 등등 </p>
</hr>
<p> taglib -> 외부 라이브러리 태그 설정가능 uri="" prefix=""</p>
<p> include -> file="파일명" </p>
</div>


<div> ------------ 여기서부터는 include 디렉티브 연습 ----------- </div>
<div>  jsp_ex1.jsp 의 페이지 내용이 바로 삽입되는 걸 볼 수 있다. (컴파일 시점 | 정적 포함) </div>

<%@include file="JSP_ex1.jsp" %>



</body>
</html>