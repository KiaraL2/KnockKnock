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
			<c:forEach var="req" items="${sessionScope.reqList}">
				<div class="requestBox">
					<div class="proposalInfo">
						<div class="reqTitle">
							<h3>${req.getReq_title()}</h3>
						</div>
						<div>
							<span>${req.getCreated_at()}</span>
						</div>
					</div>
					<div class="rightBox">
						<div class="requestStatusBox">
							<!-- 제안중인 판매자 -->
							<div class="proposalCount">${req.getProposal_count()}</div>
							<div class="requestStatus">
								<span class="onGoing">
								<c:choose>
									<c:when test="${req.getIs_canceled() eq 'Y'}">
										취소
									</c:when>
									<c:when test="${req.getIs_canceled() eq 'N'}">
										<c:choose>
											<c:when test="${req.getIs_completed() eq 'Y'}">
												거래완료
											</c:when>
											<c:otherwise>
												의뢰중
											</c:otherwise>
										</c:choose>
									</c:when>
								</c:choose>
								</span>
							</div>
						</div>
						<div class="buttonBox">
							<a href="requestShow.jsp" class="pageButton">의뢰현황</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="./assets/js/join.js"></script>
	<script type="text/javascript" src="./assets/js/header.js"></script>
</body>

</html>