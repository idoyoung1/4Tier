<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .message-container {
            background-color: white;
            padding: 2em;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        h2 {
            color: #333;
        }
        a {
            display: inline-block;
            margin-top: 1em;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <%
            String userID = request.getParameter("userID");
            String password = request.getParameter("password");

            String dbURL = "jdbc:mysql://database-1.crio22gqiskt.ap-northeast-2.rds.amazonaws.com/WebTest"; // 데이터베이스 URL 수정 필요
            String dbUser = "admin"; // 데이터베이스 사용자명 수정 필요
            String dbPassword = "123wkdtndi!"; // 데이터베이스 비밀번호 수정 필요

            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                String sql = "SELECT * FROM user WHERE userID=? AND userPassword=?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, userID);
                pstmt.setString(2, password);
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    %>
                    <h2>Login Successful</h2>
                    <p>Welcome, <%= userID %>!</p>
                    <%
                } else {
                    %>
                    <h2>Invalid credentials. Please try again.</h2>
                    <a href="login.jsp">Go back to login page</a>
                    <%
                }
            } catch (Exception e) {
                e.printStackTrace();
                %>
                <h2>Error occurred during login. Please try again later.</h2>
                <a href="login.jsp">Go back to login page</a>
                <%
            } finally {
                if (rs != null) {
                    try {
                        rs.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (pstmt != null) {
                    try {
                        pstmt.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </div>
</body>
</html>
