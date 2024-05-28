<%@page import="com.smhrd.model.MemberDAO"%>
<%@page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@page import="com.smhrd.model.CustomerDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>녹녹-플랜테리어 플랫폼</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
<style type="text/css">
form{
margin-left : 50px;
}
</style>
</head>
<body>

    <div id="centerImg">
      <a href="main.jsp"> <img src="./images/logo.png" alt="녹녹로고">
      </a>
   </div>
        <div class="box">
            <h2>비밀번호 찾기</h2>
            <form action="#" method="post">
                <label for="id">아이디</label>
                <div>
                    <input type="text" id="id" name="id" required class="textinput">
                </div>
                <label for="email">이메일</label>
                <div>
                    <input type="email" id="email" name="email" required class="textinput">
                    
                </div>
                
                <label for="new-password">변경할 비밀번호</label>
                <div>
                    <input type="password" id="new-password" name="new-password" required class="textinput">
    
                </div>
                
                <label for="confirm-password">비밀번호 확인</label>
                <div>
                    <input type="password" id="confirm-password" name="confirm-password" required class="textinput">
    
                </div>
                
                <button type="submit" class="button">비밀번호 찾기</button>
            </form>
        </div>


</body>
</html>