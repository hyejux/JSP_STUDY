<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> MVC2 패턴 </title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>

<div class="info">
	<div> MVC 2는 Model-View-Controller 패턴을 더 엄격하게 분리 </div>
	<div> 컨트롤러 | 모델 | 뷰 </div>
	<div> 모든 요청은 컨트롤러를 거친다. </div>
</div>


    <!-- 로그인 폼 -->
    <form action="memoInsert.memo" method="post">
        <label for="memo"> 메모 </label>
        <input type="text" id="memo" name="memo" required><br>

        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="pw" required><br>

        <button type="submit">등록</button>
    </form>
    
    <a href="JSP_JDBC_ex1.jsp"> 목록으로 가기 </a>


</body>
</html>