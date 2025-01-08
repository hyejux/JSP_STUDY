<%@page import="java.sql.*"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JDBC 연결 테스트</title>
</head>
<body>
    <h1>JDBC 연결 테스트 결과</h1>
    <div class="info">Java Database Connectivity(JDBC)는 Java에서 데이터베이스와 직접 통신하기 위한 표준 API입니다.</div>
    <div>MYSQL, ORACLE에 따라 전용 JDBC 드라이버를 사용합니다.</div>
    <hr>
    <%
        // 데이터베이스 연결을 위한 URL, 사용자 ID, 비밀번호를 선언
        String jdbcUrl = "jdbc:mysql://localhost:3306/spring?useSSL=false&serverTimezone=UTC"; 
        // JDBC URL 예: jdbc:mysql://서버주소:포트/데이터베이스명
        String dbId = "spring"; // 데이터베이스 사용자 ID
        String dbPwd = "spring"; // 데이터베이스 사용자 비밀번호
        
     

        // JDBC 작업에 사용할 객체들 선언
        Connection conn = null; // 데이터베이스 연결을 위한 Connection 객체
        PreparedStatement pstmt = null; // SQL 쿼리를 실행하기 위한 PreparedStatement 객체
        
        //Statement 방식도 있는데 이 방식은
        // 매개변수가 없이 값을 직접 삽입하는 특성때문에 SQL 인젝션 위험이 있어서 
        // pstmt 방식을 사용하는게 좋음 
        
        /*    Statement stmt = connection.createStatement(); 
        String sql = "SELECT * FROM users WHERE id = " + userId; 
        ResultSet rs = stmt.executeQuery(sql);
    	*/
        
        ResultSet rs = null; // SELECT 쿼리의 결과를 저장하기 위한 ResultSet 객체

        try {
            // MySQL JDBC 드라이버 로드 (드라이버 클래스의 위치는 MySQL 버전에 따라 다를 수 있음)
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            // 최신 MySQL JDBC 드라이버는 com.mysql.cj.jdbc.Driver를 사용합니다.

            // 데이터베이스에 연결 (DriverManager를 사용하여 Connection 객체 생성)
            conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
            out.println("<p>MySQL 연결 성공</p>");

            // SQL 쿼리 작성 (memo 테이블의 모든 데이터를 가져오는 SELECT 쿼리)
            String sql = "SELECT * FROM memo"; 
            pstmt = conn.prepareStatement(sql); // 쿼리를 실행하기 위한 PreparedStatement 객체 생성

            // SELECT 쿼리를 실행하고 결과를 ResultSet 객체에 저장
            rs = pstmt.executeQuery();

            // SELECT 결과를 HTML 테이블 형식으로 출력
            out.println("<table border='1'>");
            out.println("<tr><th>ID</th><th>내용</th></tr>"); // 테이블 헤더 생성
            while (rs.next()) { 
                // ResultSet 객체의 현재 행 데이터를 가져와 테이블 행으로 출력
                out.println("<tr>");
                out.println("<td>" + rs.getInt("mno") + "</td>");
                out.println("<td>" + rs.getString("memo") + "</td>"); 
                out.println("<td>" + rs.getInt("pw") + "</td>"); 
                out.println("<td>" + rs.getString("secret") + "</td>"); 
                out.println("<td>" + rs.getString("phone") + "</td>");
                
                out.println("</tr>");
            }
            out.println("</table>");
        } catch (Exception ex) {
            // 예외 발생 시 오류 메시지를 출력
            out.println("<p>연결 오류입니다. 오류 메시지: " + ex.getMessage() + "</p>");
        } finally {
            // 리소스 반환 (ResultSet, PreparedStatement, Connection 객체)
            if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            // 사용이 끝난 객체를 반환하지 않으면 자원 누수 문제가 발생할 수 있음
        }
    %>
    
    	<button type="button" class="btn1"  onclick = "location.href='index.jsp'"> < 뒤로가기 </button>
</body>
</html>
