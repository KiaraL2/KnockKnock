<%@page import="com.smhrd.model.MemberDAO"%>
<%@page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@page import="com.smhrd.model.CustomerDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>녹녹-플랜테리어 플랫폼</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>

	<div id="centerImg">
		<a href="main.jsp"> <img src="./images/logo.png" alt="녹녹로고">
		</a>
	</div>
	<div class="box">
		<h2>아이디 찾기</h2>
		<form action="#" method="post">
			<label for="email">이메일</label>
			<div>
				<input type="email" id="email" name="email" required
					class="textinput">
			</div>
			<div>
				<label for="authentication">인증코드</label>
				<div class="auth_code">
					<input type="password" id="authentication" name="authentication"
						required class="textinput">
					<button type="button" class="button">확인</button>
				</div>
				<div class="submit-container">
					<button type="submit" class="button">아이디 찾기</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>