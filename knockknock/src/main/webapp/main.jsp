<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.RequestDAO"%>
<%@page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@page import="com.smhrd.model.CustomerDTO"%>
<%@page import="com.smhrd.model.RequestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="com.smhrd.db.SqlSessionManager"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹-플랜테리어 플랫폼</title>
    <style>
        /* 헤더 스타일 */
        header {
            padding-top: 30px;
            padding-bottom: 30px;
        }

        header>div {
            display: flex;
        }

        header img {
            width: 130px;
            height: 130px;
        }

        #headerTitle {
            font-size: 28px;
            font-weight: bold;
            padding: 50px;
            padding-top: 80px;
            text-decoration-line: none;
        }

        .client {
            position: absolute;
            right: 220px;
            vertical-align: bottom;
        }

        .client a {
            color: black;
            text-decoration-line: none;
            font-weight: bold;
            font-size: 16px;
            padding-right: 20px;
        }

        /* 바디전체 여백 */
        body {
            position: relative;
            padding-left: 220px;
            padding-right: 220px;
            padding-bottom: 100px;
        }

        .filter-section {
            width: 700px;
            height: 200px;
            padding: 20px;
            background-color: white;
            border-radius: 30px;
            border: 1px solid #4CAF50;
            margin: 20px auto;
            box-sizing: border-box;
            margin-bottom: 20px;
        }

        .filter-box,.search-button {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 10px;
        }

        .filter {
            display: flex;
            flex-direction: column;
        }

        .filter label {
            margin-top: 10px;
            margin-bottom: 5px;
        }

        .filter select {
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 10px;
        }

        .search-bar {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search-button>input {
            margin-top: 20px;
            padding: 10px 20px;
            border: 1px solid #cccccc;
            border-radius: 10px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        .requests-section {
            width: 100%;
            max-width: 1200px;
            padding: 20px;
            box-sizing: border-box;
        }

        .request-list {
            background-color: #ffffff;
            border: 1px solid #dddddd;
            border-radius: 5px;
            padding: 20px;
            box-sizing: border-box;
        }

        .new-request-btn {
            margin-bottom: 10px;
            padding: 10px 20px;
            background-color: #4caf50;
            color: #ffffff;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            text-decoration-line: none;
        }

        .request-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            border-bottom: 1px solid #eeeeee;
        }

        .request-item:last-child {
            border-bottom: none;
        }

        .request-item .usage {
            font-weight: bold;
        }

        .request-item .description {
            flex: 1;
            margin-left: 20px;
        }

        .request-item .rating {
            background-color: #ff5722;
            color: #ffffff;
            border-radius: 50%;
            width: 25px;
            height: 25px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* 추가된 CSS */
        #menu {
            display: none;
            position: fixed;
            right: 0;
            top: 0;
            width: 300px;
            background-color: white;
            border-left: 1px solid #ccc;
            height: 100%;
            box-shadow: -2px 0 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            z-index: 1000;
        }
        .request-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .request-item span {
            margin-right: 10px;
        }
    </style>
</head>

<body>
<%
        // info : 로그인한 사람의 정보
        CustomerDTO info = (CustomerDTO)session.getAttribute("info");
%>
    <header>
        <div>
            <div>
                <a href="main.jsp">
                    <img src="./images/logo.png" alt="녹녹" >
                </a>                   
                
            </div>
            <span class="client">
            <%  if ( info != null) { %>
                    <a href="LogoutController">로그아웃</a>
                    <!-- 구매자일때는 custMypage.. 판매자일때는 sellerMypage... -->
                    <a href="custMypage.jsp">마이페이지</a>
                <% } else { %>
                    <a href="Login.jsp">로그인</a>
                <% } %>
            </span>
        </div>
        <hr>
    </header>
    
    <div class="content">
        <!-- Page content goes here -->
    </div>
    <main>
        <section class="filter-section">
            <div class="filter-box">
                <div class="filter">
                    <label for="usage">용도</label>
                    <select id="usage">
                        <option value="all">전체</option>
                        <option value="interior">인테리어</option>
                        <option value="eat">식용</option>
                        <option value="guitar">기타</option>
                    </select>
                </div>
                <div class="filter">
                    <label for="size">크기</label>
                    <select id="size">
                        <option value="all">전체</option>
                        <option value="minu">미니</option>
                        <option value="small">소</option>
                        <option value="medium">중</option>
                        <option value="big">대</option>
                    </select>
                </div>
                <div class="filter">
                    <label for="lighting">일조량</label>
                    <select id="lighting">
                        <option value="all">전체</option>
                        <option value="low">낮음</option>
                        <option value="soso">중간</option>
                        <option value="high">높음</option>
                    </select>
                </div>
                <div class="filter">
                    <label for="maintenance">관리주기</label>
                    <select id="maintenance">
                        <option value="all">전체</option>
                        <option value="low">매일</option>
                        <option value="medium">2-3일</option>
                        <option value="high">2-3주</option>
                    </select>
                </div>
            </div>
            <div class="search-button">
                <input type="reset" value="초기화">
                <input type="button" value="검색">
            </div>
        </section>
        <section class="requests-section">
            <div class="request-list">
                <a type="button" class="new-request-btn" href="requestWrite.jsp">의뢰서 작성</a>
		 <tr>
		
		<!-- 의뢰서리스트 올부분 -->
            </div>
        </section>
    </main>
</body>
</html>
