<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 의뢰서 조회</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<div id="cmpContent">
		<div>
			<img src="./images/adopt.png" alt="" id="cmpImg">
		</div>
		<div>
			<h1>${userInfo.seller_nick} 님의 제안을 채택하였습니다!</h1>

		</div>
		<div>
            <a href="proposalShow.jsp">
                <div>제안서 조회</div>
			</a> <a href="pay.jsp">
				<div>결제하기</div>
			</a>
		</div>
	</div>
	<script type="text/javascript" src="./assets/js/header.js"></script>
</body>
</html>