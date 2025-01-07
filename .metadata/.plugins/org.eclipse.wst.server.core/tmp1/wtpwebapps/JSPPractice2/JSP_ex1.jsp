<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트립 소개</title>
<link rel="stylesheet" type="text/css" href="css/style.css"> </link>
</head>
<body>

<div class="info">
<p> 문서 내용을 동적 생성 가능하다 </p>
<p> 스트립트릿 : JSP 페이지 내에서 자바코드를 실행할 수 있게 해준다.</p>
<p> 지시자 | 선언 | 표현식 | 주석 </p>
</div>

<div>-----------------------------------  </div>

<div> <%-- <%@ %> 이건 페이지 속성 --%> </div>
<div> <%! int abc = 100; %> 이건 변수, 메서드 선언 자바의 메서드 선언부와 비슷하게 사용됨</div>
<div> <%= abc %> 이건 결과 값 출력 </div>
<div> <%-- 주석이지롱 --%> 코드 주석 </div>

 <div>-----------------------------------  </div>

<%
int a = 12345;
int b= 1234;
int sum = a + b ;
%>

<div> sum 값은? <%= sum %> 입니다 ! </div>

	<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 뒤로가기 </button>

</body>
</html>