<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시각화</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="./assets/css/admin.css">
</head>
<body>
    <h2 class="nav-title"></h2>
    <div class="nav-box">
    <button type="button" aria-name="뒤로가기" onclick="return goBack();" id="backpage"></button>
        <div class="btn-group" role="group" aria-label="Navigation Buttons">
            <button type="button" class="btn btn-lg">
                <a href="seller_grade_counts.html">등급 별 판매자 수</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="top_20_popular_products.html">좋아요 상위 20 판매자</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="customer_gender_counts.html">구매자 성별</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="purchase_age_bar.html">구매자 연령대(막대)</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="purchase_age_pie.html">구매자 연령대(파이)</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="preference_age.html">구매자 연령대 별 선호하는 용도(막대)</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="preference_age_pie.html">구매자 연령대 별 선호하는 용도(파이)</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="hourly_purchase_counts.html">시간대 별 구매 성사 수</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="average_proposal_price.html">제안 성공 여부 별 평균제안 가격</a>
            </button>
            <button type="button" class="btn btn-lg">
                <a href="proposal_success_counts.html">제안 별 성공 비율</a>
            </button>
        </div>
    </div>
    <script type="text/javascript" src="./assets/js/common.js"></script>
</body>
</html>