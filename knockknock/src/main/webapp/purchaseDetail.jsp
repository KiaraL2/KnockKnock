<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 구매내역</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
<style type="text/css">
.proposal-text {
	max-height: 7.5em; /* Approx. 5 lines */
	overflow: hidden;
	position: relative;
	transition: max-height 0.5s ease;
}

.proposal-text.expanded {
	max-height: 1000px; /* Large value to accommodate full content */
}

.more-link {
	display: none;
	position: absolute;
	bottom: 0;
	right: 0;
	background: white;
	cursor: pointer;
}

.proposal-text.expanded .more-link {
	display: none;
}

.proposal-text .more-link {
	display: block;
}
</style>
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

	<div class="box">
		<div id="myReq">
			<h2>${requestInfo.getReq_title()}</h2>
			<p>${userInfo.cust_nick()}님의의뢰</p>
			<p>${requestInfo.getCreated_at()}~${requestInfo.getExpired_at()}</p>
			<div id="attImg">
				<span>${requestInfo.getReq_cate()}</span>
			</div>
			<div>
				<img alt="" src="${requestInfo.getReq_file}">
			</div>
			<span>의뢰인이 설정한 예산 : </span> <span>${requestInfo.getReq_price()}원</span>
			<p>요청 내용</p>
			<div>
				<span>${requestInfo.getReq_content()}</span>
			</div>
		</div>

		<div class="box">
			<section class="proposal-section">
				<h2>채택한 제안서</h2>
				<div class="seller-info">
					<img src="seller.jpg" alt="판매자 이미지">
					<div>
						<strong>${userInfo.getSeller_nick()}</strong> <span>판매자 등급:
							${userInfo.getSeller_grade() } </span> <span>Email:
							${userInfo.getSeller_email() }</span> <span>URL: <a
							href="${userInfo.getSeller_url() }">${userInfo.getSeller_url() }</a></span>
					</div>
				</div>
				<div class="proposal-content">${proposalInfo.getProposal_name() }</div>
				<div class="proposal-img">
					<img src="${proposalInfo.getProposal_file() }" alt="제안 이미지">
					<!-- 파일 안넣기로 했으면 없앰 -->
				</div>
				<div class="proposal-text">
					<span>
						ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
						ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
						ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
						ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
						ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
						ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
						ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
						ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ <!-- ${proposalInfo.proposal_description}... -->
					</span> <a href="#" class="more-link">더보기</a>
				</div>
				<div class="proposal-options">
					<div>
						<label><input type="checkbox"> ${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
					</div>
					<div>
						<label><input type="checkbox"> ${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
					</div>
					<div>
						<label><input type="checkbox"> ${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
					</div>
					<div>
						<label><input type="checkbox"> ${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
					</div>
				</div>
				<div class="final-price">최종견적가: ${proposalInfo.getProposal_price() }</div>
			</section>
		</div>
		<div>
			<div>
				<h3>구매정보</h3>
				<hr>
			</div>

			<table>
				<tr>
					<td>흙</td>
					<td><span>10,000원</span></td>
				</tr>
				<tr>
					<td>화분</td>
					<td><span>10,000원</span></td>
				</tr>
				<tr>
					<td>고무나무</td>
					<td><span>10,000원</span></td>
				</tr>
				<tr>
					<td>계</td>
					<td><span>50,000원</span></td>
				</tr>
			</table>
			<hr>
			<table>
				<tr>
					<td>중개 수수료</td>
					<td>3,000원</td>
				</tr>
				<tr>
					<td>배송비</td>
					<td>3,000원</td>
				</tr>
			</table>
			<h3>총 62,000원</h3>
		</div>
		<div>
			<h3>배송지 정보</h3>
			<hr>
			<table>
				<tr>
					<td>주소</td>
					<td>우리집</td>
				</tr>
				<tr>
					<td>상세주소</td>
					<td>204동 1004호</td>
				</tr>
				<tr>
					<td>수령인</td>
					<td>서지원</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>010-2975-6823</td>
				</tr>
				<tr>
					<td>배송 요청사항</td>
					<td></td>
				</tr>
			</table>
		</div>
		<div>
			<a href="review.jsp" class="pageButton">
				<div>리뷰작성</div>
			</a>
		</div>
	</div>
	<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function () {
    const proposalText = document.querySelector(".proposal-text");
    const moreLink = proposalText.querySelector(".more-link");

    if (proposalText.scrollHeight > proposalText.clientHeight) {
        moreLink.style.display = "block";
    }

    moreLink.addEventListener("click", function (e) {
        e.preventDefault();
        proposalText.classList.add("expanded");
        moreLink.style.display = "none";
    });
});

</script>
</body>

</html>