<%@page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 플랜테리어 플랫폼</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
<body>
	<header>
		<div>
			<div>
				<a href="main.jsp"> <img src="./images/logo.png" alt="로고">
				</a>
			</div>
			<span class="client"> <c:choose>
					<c:when test="${sessionScope.userInfo ne null}">
						<a href="LogoutController">로그아웃</a>
						<a href="CustMypageController">마이페이지</a>
					</c:when>
					<c:otherwise>
						<a href="login.jsp">로그인</a>
					</c:otherwise>
				</c:choose>
			</span>
		</div>
		<div id="headerLine">
        </div>
	</header>
</body>
</html>