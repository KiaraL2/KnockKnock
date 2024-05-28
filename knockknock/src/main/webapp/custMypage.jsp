<%@page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 마이페이지</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<h1>마이페이지</h1>
	<div class="content">
		<div id="miniProfile">
			<div id="profileDiv1">
				<img src="${userInfo.getCust_img()}" alt="구매자기본이미지" id="profileImg">
			</div>
			<div id="clientInfo">
				<div id="nickname">
					<span>${userInfo.getCust_nick()}</span>님
				</div>
			</div>
			<div id="profileDiv3">
				<div id="updateButton">
					<a href="customerProfileEdit.jsp" class="pageButton">개인정보수정</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 제안내역 -->
	<div class="content">
		<div>
			<h2>의뢰 내역</h2>

			<div class="requestBox">
				<div class="proposalInfo">
					<div class="reqTitle">
						<h3>의뢰 제목</h3>
					</div>
					<div>
						<span>2024.05.23 20:07</span>
					</div>
				</div>
				<div class="rightBox">
					<div class="requestStatusBox">
						<!-- 제안중인 판매자 -->
						<div class="proposalCount"></div>
						<div class="requestStatus">
							<span class="onGoing">의뢰중</span>
						</div>
					</div>
					<div class="buttonBox">
						<a href="requestShow.jsp" class="pageButton">의뢰현황</a>
					</div>
				</div>
			</div>
			<div class="requestBox">
				<div class="proposalInfo">
					<div class="reqTitle">
						<h3>의뢰 제목</h3>
					</div>
					<div>
						<span>2024.05.23 20:07</span>
					</div>
				</div>
				<div class="rightBox">
					<div class="requestStatusBox">
						<div class="requestStatus">
							<span class="proposalComlete">거래 완료</span>
						</div>
					</div>
					<div class="buttonBox">
						<a href="requestShow.jsp" class="pageButton"> 거래내역 보기 </a>
					</div>
				</div>
			</div>
			<div class="requestBox">
				<div class="proposalInfo">
					<div class="reqTitle">
						<h3>의뢰 제목</h3>
					</div>
					<div>
						<span>2024.05.23 20:07</span>
					</div>
				</div>
				<div class="rightBox">

					<div class="requestStatusBox">
						<!-- 제안중인 판매자 -->
						<div class="requestStatus">
							<span class="requestStatus reqCancel">의뢰 취소</span>
						</div>
					</div>
					<div class="buttonBox">
						<a href="requestShow.jsp" class="pageButton">의뢰현황</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="./assets/js/join.js"></script>
	<script type="text/javascript" src="./assets/js/header.js"></script>
</body>

</html>