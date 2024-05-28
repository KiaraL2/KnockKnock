<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 회원가입</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<div id="centerImg">
		<a href="main.jsp"> <img src="./images/logo.png" alt="녹녹로고">
		</a>
	</div>
	<h1>회원가입</h1>

	<div class="box">
		<form action="JoinController" class="joinForm">
			<table>
				<tr>
					<td>회원유형</td>
				</tr>
				<tr>
					<td><input type="radio" name="clientType" value="customer"
						id="general">일반회원 <input type="radio" name="clientType"
						value="seller" id="seller">판매자</td>
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
				<tr>
					<td>비밀번호 확인</td>
				</tr>
				<tr>
					<td><input type="text" class="textinput"></td>
				</tr>
				<tr>
					<td>닉네임</td>
				</tr>
				<tr>
					<td><input type="text" name="nick" class="textinput"></td>
				</tr>
				<tr>
					<td>이메일</td>
				</tr>
				<tr>
					<td><input type="text" name="email" class="textinput" id="mailinput">@ <select
						name="email">
							<option value="@gmail.com">gmail.com</option>
							<option value="@naver.com">naver.com</option>
							<option value="@kakao.com">kakao.com</option>
					</select></td>
				</tr>
				<tr>
					<td>전화번호</td>
				</tr>
				<tr>
					<td><input type="text" name="phone" class="textinput phoneinput">-<input
						type="text" name="phone" class="textinput phoneinput">-<input type="text" name="phone" class="textinput phoneinput"></td>
				</tr>
				<tr>
					<td>주소</td>
				</tr>
                
				<tr>
					<td><input type="text" id="sample4_postcode"
						placeholder="우편번호" class="addinput textinput"> <input type="button"
						onclick="sample4_execDaumPostcode()" value="우편번호 찾기" ><input
						type="text" name="address" id="sample4_roadAddress"
						placeholder="도로명주소" readonly="readonly" class="addinput textinput"> <input
						type="text" id="sample4_jibunAddress" placeholder="지번주소"
						readonly="readonly" class="addinput textinput"> <span id="guide"
						style="color: #999; display: none" class="addinput textinput"></span> <input type="text"
						id="sample4_extraAddress" placeholder="참고항목" readonly="readonly" class="addinput textinput">
						<input type="text" name="address" id="sample4_detailAddress"
						placeholder="상세주소" class="addinput textinput"></td>
				</tr>
			</table>
			<!-- 구매자 입력사항 -->
			<table id="generalJoin">
				<tr>
					<td>성별</td>
				</tr>
				<tr>
					<td><input type="radio" name="gender" value="M" id="">남자
						<input type="radio" name="gender" value="F" id="">여자</td>
				</tr>
				<tr>
					<td>생일</td>
				</tr>
				<tr>
					<td><input type="date" name="birth"></td>
				</tr>
			</table>
			<!-- 판매자 입력사항 -->
			<table id="sellerJoin">
				<tr>
					<td>사업자 등록번호</td>
				</tr>
				<tr>
					<td><input type="text" name="registNum" id="sellerBizNum1" class="textinput">-
						<input type="text" name="registNum" id="sellerBizNum2" class="textinput">- <input
						type="text" name="registNum" id="sellerBizNum3" class="textinput"></td>
				</tr>
				<tr>
					<td>홈페이지 URL</td>
				</tr>
				<tr>
					<td><input type="text" name="homeUrl" class="textinput"></td>
				</tr>
				<tr>
					<td>오프라인유무</td>
				</tr>
				<tr>
					<td><input type="radio" name="offline" value="N" id="">없음
						<input type="radio" name="offline" value="Y" id="">있음</td>
				</tr>
			</table>
			<div id="joinButton">
				<input type="submit" value="회원가입" id="button">
			</div>
		</form>
	</div>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="./assets/js/join.js"></script>
</body>

</html>