<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 리뷰작성</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<script>
        document.addEventListener("DOMContentLoaded", function () {
            fetch("header.html")
                .then(response => response.text())
                .then(data => {
                    document.getElementById("header-container").innerHTML = data;
                });
        });
    </script>

	<div>
		<h1>${userInfo.seller_nick}님의 제안은 어떠셨나요?</h1>
	</div>
	<div>
		<img src="${userInfo.seller_img}" alt="" id="reviewImg">
	</div>
	<form action="ReviewWriteController" method="post">
		<table>
			<tr>
				<td>제목</td>
			</tr>
			<tr>
				<td><input type="text" name="review_title"></td>
			</tr>
			<tr>
				<td>별점</td>
			</tr>
			<tr>
				<td><input type="text" name="review_ratings"></td>
			</tr>
			<tr>
				<td>후기작성</td>
			</tr>
			<tr>
				<td><textarea name="review_content" id="" cols="40" rows="5"></textarea></td>
			</tr>
		</table>
		<input type="submit" value="리뷰작성" id="button">
	</form>
</body>
</html>