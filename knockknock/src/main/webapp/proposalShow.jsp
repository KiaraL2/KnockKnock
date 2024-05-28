<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 제안서 조회</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<div id="header-container"></div>

	<div class="box">
		<h2>채택한 제안서</h2>
		<div class="seller_info">
			<img src="./images/꽃집3.jpg" alt="판매자 이미지">
			<div>
				<strong>서지원</strong> <span>판매자 등급: 골드 </span> <span>Email:
					sam990820@gmail.com</span> <span>URL: <a
					href="http://www.naver.com">www.naver.com</a></span>
			</div>
			<!-- <div>
					<strong>${userInfo.getSeller_nick()}</strong> <span>판매자 등급:
						${userInfo.getSeller_grade() } </span> <span>Email:
						${userInfo.getSeller_email() }</span> <span>URL: <a
						href="${userInfo.getSeller_url() }">${userInfo.getSeller_url() }</a></span>
				</div> -->
		</div>
		<div class="proposal_title">비싸지 않게 플랜테리어 해보세요~</div>
		<div class="proposal-text">
			<span>
				ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
				ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
				ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ <!-- ${proposalInfo.proposal_description}... -->
			</span> <a href="#" class="more-link">더보기</a>
		</div>
		<div class="proposal-options">
			<div>
				<label><input type="checkbox">씨앗</label> <span>10,000원</span>
			</div>

			<!-- <div>
					<label><input type="checkbox">
						${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
				</div> -->
			<!-- <div>
					<label><input type="checkbox">
						${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
				</div>
				<div>
					<label><input type="checkbox">
						${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
				</div> -->
		</div>
		<div class="final-price">최종견적가:
			${proposalInfo.getProposal_price() }</div>
	</div>

	<script type="text/javascript" src="./assets/js/textExpand.js"></script>
	<script type="text/javascript" src="./assets/js/header.js"></script>
</body>

</html>