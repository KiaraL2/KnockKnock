<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 의뢰서 작성</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<div class="reqBox">
		<form action="RequestWriteController" method="post">
			<table>
				<tr>
					<td colspan="2" id="requestWrite">
						<p>의뢰서 작성하기</p>
					</td>
				</tr>
				<tr>
					<td><label for="requestTitle">제목</label></td>
					<td><input type="text" name="requestTitle" id="requestTitle"></td>
				</tr>
				<tr>
					<td><label for="requestFile">파일첨부</label></td>
					<td><input type="file" name="requestFile" id="requestFile"></td>
				</tr>
				<tr>
					<td><label for="requestBudget">예산</label></td>
					<td><input type="text" name="requestBudget" id="requestBudget"></td>
				</tr>
				<tr>
					<td><label for="req_use">용도</label></td>
					<td><select name="req_use" id="req_use">
							<option value="interior">인테리어</option>
							<option value="for_eat">식용재배</option>
							<option value="gift">선물용</option>
							<option value="etc">기타</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="req_receipt">수령방법</label></td>
					<td><select name="req_receipt" id="req_receipt">
							<option value="online">온라인 배송</option>
							<option value="offline">현장 픽업</option>
							<option value="any">무관</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="requestDetail">세부내용</label></td>
					<td><textarea name="requestDetail" id="requestDetail"
							cols="40" rows="5"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="button"
						value="의뢰하기"></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="./assets/js/header.js"></script>
</body>
</html>
