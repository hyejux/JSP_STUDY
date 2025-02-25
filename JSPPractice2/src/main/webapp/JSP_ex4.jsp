<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 표현 언어 소개   </title>
<link rel="stylesheet" type="text/css" href="css/style.css"> </link>
</head>
<body>
	<div class="info">
	<div> EL (Expression Language) 표현언어란? </div>
	<div> JSP 에서 객체를 출력할때 앞에서 쓰던 스크립팅을 사용하지 않는 기술! </div>
	<div> <%-- <% %> --%> 이거를 <%-- ${} --%> 로 쓸수 있다! </div>
	<div> pageScope → requestScope → sessionScope → applicationScope 순서대로 값을 찾아가며,</div> 
	<div>해당 이름의 속성이 가장 먼저 발견된 범위에서 그 값을 출력 </div>
	</div>
	
	<hr/>
	<div class="point"> 바로 연산 가능 </div>
	<div>${1+2} </div>
	<div>${1 == 2 ? '같음' : '다름'} </div>
	<div>${1<2 and 2<3} </div>
	<hr/>
	
	<div class="point"> 값 한번에 가져오기 가능 </div>
	<div class="info"> EL 에는 내장객체가 있어요 </div>
	<div class="info"> EL 내장객체로 간편한 작업 가능 </div>
	<div class="info"> pageScope | requestScope | sessionScope | param 등등...</div>
	
	<% 
		String idEL = request.getParameter("id"); 
	%>
	<div> 이건 스크립팅을 사용했어요 : <%= idEL %>  </div>
	<div> 이건 EL 을 사용했어요 : ${param.id} </div>
	
	<% 
        request.setAttribute("hi", "데이터야");
    %>
	<div> 이건 EL 을 사용했어요 : ${requestScope.hi} </div>
	<div> requestScope 는  생략도 돼요 : ${hi} </div>
	

	
	<div> 세션도 이런식으로 사용 가능 ! </div>
	<div> <% session.setAttribute("user_id","aaa123"); %> </div>
	<div>${sessionScope.user_id}</div>

	
	<hr/>
	
	
	
	
	
	
	
	
	
	<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
	<div> EL 을 사용하려면 상단에 </div>
	<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 뒤로가기 </button>
	
</body>
</html>