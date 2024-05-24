<%@page import="com.smhrd.model.MemberDAO"%>
<%@page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@page import="com.smhrd.model.CustomerDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>녹녹-플랜테리어 플랫폼</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #F0F7F0;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px;
            text-align: left;
        }
        .container h2 {
            font-size: 20px;
            margin-bottom: 20px;
        }
        .container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .container input[type="text"], .container input[type="email"], .container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .container button {
            width: 140px;
            height: 40px;
            background-color: #01A208;
            color: white;
            border: none;
            border-radius: 10%;
            cursor: pointer;
            font-size: 14px;
            display: block;
            margin: 0 auto;
        }
        .container button:hover {
            background-color: #45a049;
        }
        
    </style>
</head>
<body>

    <div class="container">
        <h2>비밀번호 찾기</h2>
        <form action="#" method="post">
            <label for="id">아이디</label>
            <input type="text" id="id" name="id" required>

            <label for="email">이메일</label>
            <input type="email" id="email" name="email" required>

            <label for="new-password">변경할 비밀번호</label>
            <input type="password" id="new-password" name="new-password" required>

            <label for="confirm-password">비밀번호 확인</label>
            <input type="password" id="confirm-password" name="confirm-password" required>

            <button type="submit">비밀번호 찾기</button>
        </form>
    </div>

</body>
</html>