<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 액션 태그 소개 </title>
<link rel="stylesheet" type="text/css" href="css/style.css"> </link>
</head>
<body>

	<div class="info">
		<div> 액션태그 : JSP 페이지에서 특별한 기능들을 제공해줌  </div>
		<div> forward | userBean | include (동적 포함 | 런타임 시점) | param | getProperty | setProperty 등등... </div>
	</div>

	<div class="point"> forward  </div>
	<%-- <jsp:forward page="index.jsp"/> --%>
	<div> 요청 객체를 위임하는 컴포넌트에 동일하게 전달함 </div>
	
	<div class="point"> sendRedirect  </div>
	<div> 요청 객체를 전달하지 않음  (기존 요청은 사라짐) </div>

	
	<hr>
	<div class="point"> JAVA Bean  </div>
	<div> 자바빈은 java 데이터+기능으로 이루어진 클래스이다 (변수+메서드) </div>
	<div> db 반복적 자업을 효율적으로 처리하기 위해 사용 (getter, setter로 사용 가능) </div>
	<div> JSP 에서는 jsp:useBean 으로 자바빈을 사용할 수 있다.</div> 
	<hr>
	

<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 뒤로가기 </button>
</body>
</html>