<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
        }
        .wrap {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .header, .nav {
 		   background-color: #fff;
    	   padding: 10px;
    	   border-radius: 5px;
    	   box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    	   margin-bottom: 20px;
    	   color: #000; /* 텍스트 색상을 검은색으로 설정 */
    	   font-weight: bold; /* 글씨체를 굵게 설정 */
		}
        .nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: space-around;
        }
        .nav ul li {
            display: inline;
        }
        .nav ul li a {
            text-decoration: none;
            color: #2970ff;
            font-weight: bold;
        }
        .nav ul li a:hover {
            text-decoration: underline;
        }
        .banner {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }
        .banner button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #2970ff;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .banner button:hover {
            background-color: #1a5ab8;
        }
        .main-content {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="wrap">
        <div class="header">
            <div class="searchArea">
                <form>
                    <input type="search" placeholder="search">
                    <span>검색</span>
                </form>
            </div>
            <div class="nav">
                <ul>
                    <%
                    String RsessionId = request.getRequestedSessionId();
                    String compareSessionId = session.getId();
                    String sessionId = request.getParameter("sessionId");
                    String userId = request.getParameter("userId");
         	        session.setAttribute("userId", userId);
                    userId = (String) session.getAttribute("userId");
                    // Check if userId is null or sessionId is "temp"
                    if (userId == null || sessionId == null) {
                    %>
                        <li><a href="https://www.4tier.store/">메인 페이지</a></li>
                        <li><a href="/board">고객센터</a></li>
                        <li><a href="/login">로그인</a></li>
                        <li><a href="event.jsp">마일리지 상품</a></li>
                    <%
                    } else {
                        // Check if sessionId matches
                        if (sessionId != null && (sessionId.equals(RsessionId) || compareSessionId.equals(RsessionId))) {
                    %>
                            <li><a href="https://www.4tier.store?userId=<%= userId %>&sessionId=<%= compareSessionId %>">메인 페이지</a></li>
                            <li><a href="/board?userId=<%= userId %>&sessionId=<%= compareSessionId %>">고객센터</a></li>
                            <li><a href="/write?userId=<%= userId %>&sessionId=<%= compareSessionId %>">로그인</a></li>
                            <li><a href="event.jsp?userId=<%= userId %>&sessionId=<%= compareSessionId %>">마일리지 상품</a></li>
                            <li>
                                <span style="color: black;">
                                    <%= userId %>
                                </span><span style="color: black;">님 환영합니다.</span>
                                <a href="https://www.4tier.store/login/logout.jsp" style="color: black;">Logout</a>
                            </li>
                    <%
                        } else {
                    %>
                    <li><a href="/">메인 페이지</a></li>
                    <li><a href="/board">고객센터</a></li>
                    <li><a href="/write">로그인</a></li>
                    <li><a href="event.jsp">마일리지 상품</a></li>
                    <%
                        }
                    }
                    %>
                </ul>
            </div>
        </div>
        <div class="banner">
            <button onclick="location.href='/best'">마일리지 상품</button>
            <button onclick="location.href='/discount'">할인 쿠폰</button>
            <button onclick="location.href='/lunchboxes'">자동 추천</button>
            <button onclick="location.href='/products/snacks'">제로 칼로리</button>
        </div>
        <div class="main-content">
            <h1>회원 전용 사이트에 오신걸 환영합니다</h1>
             <img src="image.jpg" alt="Description of the image" style="max-width: 100%; height: auto;">
        </div>
    </div>
</body>
</html>
