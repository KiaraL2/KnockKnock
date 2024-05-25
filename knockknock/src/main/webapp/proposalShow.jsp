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
</head>
<body>
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
					<label><input type="checkbox">
						${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
				</div>
				<div>
					<label><input type="checkbox">
						${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
				</div>
				<div>
					<label><input type="checkbox">
						${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
				</div>
				<div>
					<label><input type="checkbox">
						${proposalInfo.getProposal_products() }</label> <span>${proposalInfo.getProposal_price()}원</span>
				</div>
			</div>
			<div class="final-price">최종견적가:
				${proposalInfo.getProposal_price() }</div>
		</section>
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