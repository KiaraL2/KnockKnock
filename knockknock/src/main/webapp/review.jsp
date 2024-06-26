<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 리뷰작성</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<div>
		<h1>${userInfo.getSeller_nick()}님의제안은 어떠셨나요?</h1>
	</div>
	<div class="review_space">
		<div class="box">
			<img src="${userInfo.getSeller_img()}" alt="" id="reviewImg">
			<form action="ReviewWriteController" method="post">
				<table>
					<tr>
						<td>리뷰 제목</td>
					</tr>
					<tr>
						<td><input type="text" name="review_title" class="textinput"></td>
					</tr>
					<tr>
						<td>별점</td>
					</tr>
					<tr>
						<td><input type="range" name="review_ratings" min="1" max="5"
							step="0.5"> <span id="ratingValue">3</span> <!-- 초기값 설정 -->
						</td>
					</tr>
					<tr>
						<td>후기작성</td>
					</tr>
					<tr>
						<td><textarea name="review_content" id="" cols="40" rows="5"></textarea></td>
					</tr>
				</table>
				<input type="submit" value="리뷰작성" class="button">
		</div>
		</form>
	</div>
	<script type="text/javascript" src="./assets/js/header.js"></script>
	<script type="text/javascript" src="./assets/js/ratingValue.js"></script>
</body>
</html>
