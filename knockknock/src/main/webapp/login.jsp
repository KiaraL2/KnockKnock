<%@page pageEncoding="utf-8" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@page isELIgnored="false" %>
			<!DOCTYPE html>
			<html lang="ko">

			<head>
				<meta charset="UTF-8">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<title>녹녹 - 로그인</title>
				<link rel="icon" href="./images/favicon.ico" />
				<link rel="apple-touch-icon" href="./images/favicon.ico" />
				<link rel="stylesheet" href="./assets/css/style.css">
			</head>

			<body>
				<div id="centerImg">
					<a href="main.jsp"> <img src="./images/logo.png" alt="녹녹로고">
					</a>
				</div>
				<h1>
					<a id="admin">로그인</a>
				</h1>

				<div class="box" id="loginBox">
					<div>
						<form name="login" action="LoginController" id="loginForm" onsubmit="return test()">
							<table>
								<tr>
									<td>회원유형</td>
								</tr>
								<tr>
									<td id="clientType"><input type="radio" name="clientType" value="customer">일반회원
										<input type="radio" name="clientType" value="seller">판매자
									</td>
								</tr>
								<tr>
									<td>아이디</td>
								</tr>
								<tr>
									<td><input type="text" name="id" class="textinput"></td>
								</tr>
								<tr>
									<td>비밀번호</td>
								</tr>
								<tr>
									<td><input type="text" name="pw" class="textinput"></td>
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
				<script type="text/javascript">
					$admin = document.getElementById('admin')
					$admin.addEventListener('contextmenu', (e) => {
						e.preventDefault()
						if (e.ctrlKey && e.altKey && e.button === 2) {
							location.href = "admin.jsp"
						}
					})
					function test() {
						const $loginForm = document.forms.login
						const type = $loginForm.elements.clientType.value
						const id = $loginForm.elements.id
						const pw = $loginForm.elements.pw

						if (!type) {
							return false
						}
						if (!id) {
							return false
						}
						if (!pw) {
							return false
						}
						return true
					}
				</script>
			</body>

			</html>