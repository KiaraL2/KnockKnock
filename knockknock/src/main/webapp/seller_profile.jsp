<%@page import="com.smhrd.model.MemberDAO"%>
<%@page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@page import="com.smhrd.model.CustomerDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>녹녹-플랜테리어 플랫폼</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
    <!-- 헤더 -->
    <div id="header-container"></div>

    <div class="box">
        <div class="seller_info">
            <img src="https://via.placeholder.com/100" alt="판매자">
            <div>
                <strong>김판매</strong>
                판매자 등급: 골드 ⭐<br>
                Email: a@naver.com<br>
                판매 사이트: <a href="http://www.myplant.com">http://www.myplant.com</a>
            </div>
        </div>
        <div class="self_intro">
            <strong>자기소개</strong>
            <p>식물마스터 식물 마스터까지 공간/토양에 맞게 맞춤 추천 자신있습니다<br>
            식물판매 경력 17년! 문의사항은 언제든 연락 주세요~ 010-1234-1234</p>
        </div>
        <div class="portfolio">
            <strong>포트폴리오</strong>
            <div>
                <img src="https://via.placeholder.com/150" alt="포트폴리오1">
                <img src="https://via.placeholder.com/150" alt="포트폴리오2">
                <img src="https://via.placeholder.com/150" alt="포트폴리오3">
                <img src="https://via.placeholder.com/150" alt="포트폴리오4">
            </div>
        </div>
        <div class="reviews">
            <strong>리뷰</strong>
            <span class="review-rating">★ 4.9 (121 리뷰)</span>
            <div class="review">
                <img src="https://via.placeholder.com/50" alt="식물다내기">
                <div>
                    <div class="reviewer">식물다내기 ★ 5.0</div>
                    <div>우와 추천해주신대로 구매했는데 너무 만족스럽네요~~</div>
                    <div class="review_date">2024.05.17</div>
                </div>
            </div>
            <div class="review">
                <img src="https://via.placeholder.com/50" alt="식린이탈출">
                <div>
                    <div class="reviewer">식린이탈출 ★ 5.0</div>
                    <div>제 애정하는 책과 잘 어울리는 식물이네요 다음에 또 이용할게요</div>
                    <div>2024.05.16</div>
                </div>
            </div>
        </div>
        <div class="more-reviews">
            <a href="#">리뷰더보기</a>
        </div>
    </div>
    <script type="text/javascript" src="./assets/js/header.js"></script>
</body>
</html>
