<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 의뢰서 작성</title>
<link rel="icon"
	href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
<link rel="apple-touch-icon"
	href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
<link rel="stylesheet" href="./assets/CSS/Style.css">
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

	<div class="reqBox">
		<form action="RequestWriteController" method="post">
			<table>
				<tr>
					<td colspan="2" id="requestWrite">
						<p>의뢰서 작성하기</p>
					</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="requestTitle"></td>
				</tr>
				<tr>
					<td>파일첨부</td>
					<td><input type="file" name="requestFile"></td>
				</tr>
				<tr>
					<td>예산</td>
					<td><input type="text" name="requestBudget"></td>
				</tr>
				<tr>
					<td>용도</td>
					<td><select name="purpose" id="">
							<option value="">인테리어</option>
							<option value="">식용</option>
							<option value="">선물용</option>
							<option value="">기타</option>
					</select></td>
				</tr>
				<tr>
					<td>수령방법</td>
					<td><select name="howReceive" id="">
							<option value="">온라인 배송</option>
							<option value="">현장 픽업</option>
							<option value="">무관</option>
					</select></td>
				</tr>
				<tr>
					<td id="detail">세부내용</td>
					<td><textarea name="" id="" cols="40" rows="5"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" id="button" value="의뢰하기">
					</td>
				</tr>
			</table>
		</form>

	</div>

</body>
</html>