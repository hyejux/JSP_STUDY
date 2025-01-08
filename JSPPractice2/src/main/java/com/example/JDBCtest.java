package com.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCtest {
	public void main(String args[]) {
		// 상단에 import Connection , DriverManager, PreparedStatement
		// sql 접속 정보 선언
		String jdbcUrl = "jdbc:mysql://localhost:3306/spring";
		String dbId = "spring";
		String dbPwd = "spring";
		

		Connection conn = null;// sql 연결을 위한 connection
		PreparedStatement pstmt = null;	//쿼리 구문 실행할 statement 객체 생성
		
		try
		{
			// jdbc 드라이버 호출
			Class.forName("com.mysql.jdbc.Driver");
			
			
			// java.sql 패키지를 사용하는데 내부 클래스들이 전부 throws 처리 되어있기 때문에 try-catch 문 안에서 작성한다
			Connection connection = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
			System.out.println("MySQL 연결 성공");
					
		
			// 실행한 sql 입력 후 연결
			String sql = "SELECT * FROM memo";
			pstmt = conn.prepareStatement(sql);
			
			//sql 문 실행 
			int result = pstmt.executeUpdate(); // Insert, Update, Delete 쿼리문을 실행합니다. 
			System.out.println(result);
			
			
			//연결이 끝난 뒤에는 반드시 close() 메서드를 호출하여 Connection 객체가 사용한 시스템 자원을 반환한다. 
			//( 시스템 자원이 불필요하게 소모되어 커넥션을 구할 수 없는 상황이 발생!!) 
			conn.close();
			pstmt.close();
		}
		catch (Exception ex)
		{
			System.out.println("연결 오류입니다. 오류 메시지 : " + ex.getMessage());
		}
	}

}
