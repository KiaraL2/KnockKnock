<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 의뢰서 조회</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<div class="myReq">
		<h2>${requestInfo.req_title}</h2>
		<p>${userInfo.cust_nick}님의의뢰</p>
		<p>${requestInfo.created_at}~${requestInfo.expired_at}</p>
		<div id="attImg">
			<img src="${requestInfo.req_file}" alt=""> <span>인테리어</span>
		</div>
		<div>
			<img alt="" src="${requestInfo.req_file}">
		</div>
		<span>의뢰인이 설정한 예산: </span> <span>${requestInfo.req_price}원</span>
		<p>요청 내용</p>
		<div>
			<span>${requestInfo.req_content}</span>
		</div>
	</div>

	<div class="reProp">
		<h2>도착한 제안서</h2>
		<c:forEach var="proposal" items="${proposalList}">
			<a href="proposalShow.jsp?proposalId=${proposal.proposal_id}">
				<div>
					<table>
						<tr>
							<td rowspan="3" id="propSellerImg"><img
								src="${proposal.seller_img}" alt=""></td>
							<td>${proposal.seller_nick}</td>
						</tr>
						<tr>
							<td>${proposal.proposal_name}<hr></td>
						</tr>
						<tr>
							<td>${proposal.proposal_price}</td>
						</tr>
					</table>
				</div>
			</a>
		</c:forEach>
	</div>
	<script type="text/javascript" src="./assets/js/header.js"></script>

</body>
</html>
