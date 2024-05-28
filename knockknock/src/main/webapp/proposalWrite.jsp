<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 제안서 작성</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<div id="header-container"></div>

	<div class="box">
		<h2>제안서 작성</h2>
		<form action="">
			<div>
				<div>
					<span>제목</span>
				</div>
				<div>
					<input type="text" class="textinput">
				</div>
			</div>
			<div class="form_group_options">
				<label>옵션</label>
				<div class="proposal_option">
					<input type="text" name="proposal_products" placeholder="옵션 명">
					<input type="number" name="proposal_price" placeholder="단가"
						class="proposal_price">원 <input type="number"
						name="proposal_quantity" placeholder="수량"
						class="proposal_quantity">
				</div>
				<button type="button" id="addOptionBtn">추가</button>
			</div>

			<div class="form-group">
				<div>
					<label for="proposal_description">설명입력</label>
				</div>
				<textarea id="proposal_description" name="proposal_description"></textarea>
			</div>
			<div class="form-group">
				<div>
					<strong>최종견적가: <span id="totalPrice">0</span>원
					</strong>

				</div>
				<button type="submit" class="button">제안서 제출</button>
			</div>
		</form>

		<script type="text/javascript" src="./assets/js/totalPrice.js"></script>
		<script type="text/javascript" src="./assets/js/header.js"></script>
</body>

</html>