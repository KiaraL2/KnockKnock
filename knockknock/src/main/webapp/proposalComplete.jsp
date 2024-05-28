<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 제안서 작성</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<div id="cmpContent">
        <div>

            <img src="./images/complete.png" alt="" id="cmpImg">

        </div>
        <div>
            <h1>제안서 작성이 완료되었습니다!</h1>

        </div>
        <div>
            <a href="main.jsp">
                <div>메인화면으로</div>
            </a>
            <a href="requestShow.jsp">
                <div>의뢰현황 확인</div>
            </a>
        </div>
    </div>
    <script type="text/javascript" src="./assets/js/header.js"></script>
</body>
</html>