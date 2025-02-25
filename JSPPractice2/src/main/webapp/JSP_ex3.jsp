<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 기본 객체 소개 </title>
</head>
<link rel="stylesheet" type="text/css" href="css/style.css"> </link>
<body>
<div class="info">
<p> JSP 내장 객체에 대해 알아보자 </p>
<p> JSP 파일 내에 객체를 생성하지 않고도 바로 사용할 수 있는 객체야. </p>
<div> 브라우저가 WAS 에게 Servlet 요청을 보내면  </div>
<div> WAS 는 아래 두 객체를 생성해 </div>
<hr/>
<div class="point"> HttpServletRequest </div>
<div> http 의 request  정보를 서블릿에게 전달하기 위해 사용 </div>
<div class="point"> HttpServletResponse </div>
<div> 생성되어 서블릿에게 전달되고 이 객체를 통해 응답메세지를 보냄</div>
<div> 위 객체들 말고도 다양한 객체들이 존재해 </div>
<div class='point'> out | session | application | pageContext.. 등등 </div>
<div> 모든 객체들은 주요 메서드들이 있는데 알아두는게 좋다! </div>
<hr/> 
<div> [기본객체 생명주기] </div>
<div>page 하나의 JSP 페이지 처리 => pageContext</div>
<div>request 요청영역마다 생성되고 (HTTP 요청) => request</div>
<div>session  브라우저별로 생성되고 => session</div>
<div>application프로그램 전체에서 딱 한번 최초 가동시 생성됩니다 => application</div>
</div>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!--  원래는 최산단에 위치하는게 맞다. 하지만 설명을 위해 여기에 두겠음 -->
<%
	String name = request.getParameter("name");
	out.println("<div> 앞에서 받아온 파라미터 name 값 " + name + "</div>");
	
    // 클라이언트의 IP 주소를 출력
    String clientIp = request.getRemoteAddr();
    out.println("<div> Client IP: " + clientIp + "</div>");

    // 요청 헤더 정보를 출력
    String userAgent = request.getHeader("User-Agent");
    out.println("<div> User-Agent: " + userAgent  + "</div>");

    // 세션 정보 출력
    String sessionId = request.getSession().getId();
    out.println("<div> Session ID: " + sessionId  + "</div>");
    
    // HTTP 요청 메서드 확인
    String method = request.getMethod();

    // 요청 메서드 출력
    out.println("<div> Request Method: " + method  + "</div>");
    
   
%>

<hr/>
 <%
 //JSP에서 클라이언트(웹 브라우저)로 데이터를 출력하는 스트림
      String message = "Hello, JSP!";
      // out 객체를 사용하여 클라이언트(브라우저)로 출력
      out.println("<p>" + message + "</p>");
  %>
  
<div> 요즘에는 EL 또는 JSTL 과 같은 방식으로 출력되는 것이 권장 됨! </div>
<hr/>

<%  
    // 리디렉션을 통해 다른 URL로 이동
    //response.sendRedirect("링크");
	//  주로 로그인 성공 후 or 폼 제출 후 다른페이지 이동 시 사용됨

%>

<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 뒤로가기 </button>

</body>
</html>
