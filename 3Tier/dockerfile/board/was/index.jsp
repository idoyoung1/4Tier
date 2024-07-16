<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>환불 사유</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .list-group-item {
            border-color: #dee2e6;
        }
        .header{
        	background-color: #0B610B; /* 어두운 초록색 */
			color: #fff;
			padding: 20px;
			text-align: center;
			margin-bottom: 30px;
		}
        .footer {
            background-color: #0B610B; /* 어두운 초록색 */
			color: #fff;
			padding: 20px;
			text-align: center;
			margin-bottom: 30px;
        }
        .content {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>고객 센터</h1>
    </div>

    <div class="container content">
        <div class="row">
            <div class="col-md-10 mx-auto">
                <div class="list-group">
                    <%
                    try {
                        // 데이터베이스 연결 설정
                        String jdbcUrl = "jdbc:mysql://database-1.crio22gqiskt.ap-northeast-2.rds.amazonaws.com:3306/yunjangsu1";
                        String dbId = "admin";
                        String dbPwd = "123wkdtndi!";
                        String driver = "com.mysql.cj.jdbc.Driver";

                        Class.forName(driver);
                        Connection conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
                        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM refunds");
                        ResultSet rs = pstmt.executeQuery();

                        while (rs.next()) {
                            String customerName = rs.getString("customer_name");
                            double refundAmount = rs.getDouble("refund_amount");
                            String refundReason = rs.getString("refund_reason");
                            Timestamp refundDate = rs.getTimestamp("refund_date");
                    %>
                    <a href="#" class="list-group-item list-group-item-action">
                        <h5 class="mb-1">고객: <%= customerName %></h5>
                        <p class="mb-1">환불 금액: <%= refundAmount %></p>
                        <p class="mb-1">환불 사유: <%= refundReason %></p>
                        <p class="mb-1">환불 일자: <%= refundDate %></p>
                    </a>
                    <%
                        }
                        rs.close();
                        pstmt.close();
                        conn.close();
                    } catch (SQLException e) {
                        out.println("SQL Exception: " + e.getMessage());
                    } catch (ClassNotFoundException e) {
                        out.println("Class Not Found Exception: " + e.getMessage());
                    } catch (Exception e) {
                        out.println("Exception: " + e.getMessage());
                    }
                    %>
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
    </div>
</body>
</html>
