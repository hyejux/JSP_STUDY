package com.example;

import java.sql.*;

public class memoDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private static memoDAO instance;

    // Singleton 패턴
    public static memoDAO getInstance() {
        if (instance == null) {
            instance = new memoDAO();
        }
        return instance;
    }

    // DB 연결을 한 번만 하고, 재사용
    private Connection getConnection() throws SQLException {
        String jdbcUrl = "jdbc:mysql://localhost:3306/spring?useSSL=false&serverTimezone=UTC";
        String dbId = "spring";
        String dbPwd = "spring";
        return DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
    }

    // 유저 데이터 삽입 메소드
    public int insertMEMO(memoDTO memo) {
        int result = 0;
        String sql = "INSERT INTO memo (memo, pw) VALUES (?, ?)";

        try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, memo.getMemo());
            pstmt.setInt(2, memo.getPw());
            result = pstmt.executeUpdate();
            if (result > 0) {
                System.out.println("삽입성공");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
