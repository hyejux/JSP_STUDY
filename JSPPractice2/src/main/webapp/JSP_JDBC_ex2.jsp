<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JDBC 연결 INSERT</title>
</head>
<body>
    <h1>JDBC INSERT (Select랑은 조금 달라요)</h1>
    
    <%
    
	    // 입력값 가져오기
	    String memo = request.getParameter("memo");
	    String phone = request.getParameter("phone");
	    String pw = request.getParameter("pw");
	    String secret = request.getParameter("secret");
	    
        // 연결 정보 선언
        String jdbcUrl = "jdbc:mysql://localhost:3306/spring?useSSL=false&serverTimezone=UTC";
        String dbId = "spring";
        String dbPwd = "spring";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // MySQL JDBC 드라이버 로드
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 데이터베이스 연결
            conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
            out.println("<p>MySQL 연결 성공</p>");

            // INSERT 쿼리
            String sql = "INSERT INTO MEMO (memo, phone, pw, secret) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);

            // 값 설정
            pstmt.setString(1, "메모 내용"); // 첫 번째 ?에 대한 값
            pstmt.setString(2, "010-1234-5678"); // 두 번째 ?에 대한 값
            pstmt.setInt(3, 12); // 세 번째 ?에 대한 값
            pstmt.setString(4, "Y"); // 네 번째 ?에 대한 값 (true or false)

            // 쿼리 실행
            int rowsInserted = pstmt.executeUpdate(); // *** select 이외 쿼리는 executeUpdate() 사용
            
            if (rowsInserted > 0) {
                out.println("<p>데이터 삽입 성공!</p>");
            } else {
                out.println("<p>데이터 삽입 실패!</p>");
            }
        } catch (Exception ex) {
            // 예외 발생 시 오류 메시지 출력
            out.println("<p>연결 오류입니다. 오류 메시지: " + ex.getMessage() + "</p>");
        } finally {
            // 리소스 반환
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    %>
    
    <a href="JSP_JDBC_ex1.jsp"> 목록으로 가기 </a>

</body>
</html>
