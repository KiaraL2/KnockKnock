<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 회원가입</title>
<link rel="icon"
	href="./images/favicon.ico" />
<link rel="apple-touch-icon"
	href="./images/favicon.ico" />
<link rel="stylesheet" href="Style.css">
</head>

<body>
	<div id="centerImg">
		<a href="main.jsp"> <img src="./images/logo.png" alt="녹녹로고">
		</a>
	</div>
	<h1>로그인</h1>

	<div class="box" id="loginBox">
		<div>
			<form action="LoginController" id="loginForm" method="post">
				<table>
				<tr>
					<td>회원유형</td>
				</tr>
				<tr>
					<td><input type="radio" name="clientType" value="customer"
						>일반회원 <input type="radio" name="clientType"
						value="seller">판매자</td>
					<tr>
						<td>아이디</td>
					</tr>
					<tr>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
					</tr>
					<tr>
						<td><input type="text" name="pw"></td>
					</tr>
				</table>
				<input type="submit" id="button" value="로그인">
			</form>
		</div>
		<div>
			<div>
				<span>아이디가 없으신가요?</span> <a href="join.jsp">회원가입</a>
			</div>
			<div id="find">
				<a href="findId.jsp"><i>ID찾기</i></a> <a href="findPw.jsp"><i>비밀번호
						찾기</i></a>
			</div>
		</div>
	</div>
</body>
</html>