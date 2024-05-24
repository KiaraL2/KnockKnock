<%@page import="com.smhrd.model.MemberDAO"%>
<%@page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@page import="com.smhrd.model.CustomerDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>녹녹-플랜테리어 플랫폼</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            display: flex;
            justify-content: center;
            padding: 20px;
            margin: 0;
        }
        .container {
            background-color: #F0F7F0;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 800px;
        }
        .seller-info, .self-intro, .portfolio, .reviews {
            margin-bottom: 20px;
        }
        .seller-info {
            display: flex;
        }
        .seller-info img {
            border-radius: 10px;
            width: 100px;
            height: 100px;
            margin-right: 15px;
        }
        .seller-info div {
            font-size: 14px;
        }
        .seller-info div strong {
            display: block;
            font-size: 16px;
            margin-bottom: 5px;
        }
        .self-intro, .portfolio, .reviews {
            padding: 10px 0;
            border-top: 1px solid #ddd;
        }
        .portfolio img {
            width: 150px;
            height: 150px;
            margin-right: 10px;
            border-radius: 10px;
        }
        .reviews .review {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .reviews .review img {
            border-radius: 50%;
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        .reviews .review div {
            font-size: 14px;
        }
        .review-rating {
            color: gold;
        }
        .more-reviews {
            text-align: center;
            margin-top: 20px;
        }
        .more-reviews a {
            text-decoration: none;
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="seller-info">
            <img src="https://via.placeholder.com/100" alt="판매자">
            <div>
                <strong>김판매</strong>
                판매자 등급: 골드 ⭐<br>
                Email: a@naver.com<br>
                판매 사이트: <a href="http://www.myplant.com">http://www.myplant.com</a>
            </div>
        </div>
        <div class="self-intro">
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
            <div class="review">
                <img src="https://via.placeholder.com/50" alt="식물다내기">
                <div>
                    <div class="review-rating">★ 4.9 (121 리뷰)</div>
                    <div>식물다내기 ★ 5.0</div>
                    <div>우와 추천해주신대로 구매했는데 너무 만족스럽네요~~</div>
                    <div>2024.05.17</div>
                </div>
            </div>
            <div class="review">
                <img src="https://via.placeholder.com/50" alt="식린이탈출">
                <div>
                    <div>식린이탈출 ★ 5.0</div>
                    <div>제 애정하는 책과 잘 어울리는 식물이네요 다음에 또 이용할게요</div>
                    <div>2024.05.16</div>
                </div>
            </div>
        </div>
        <div class="more-reviews">
            <a href="#">리뷰더보기</a>
        </div>
    </div>
</body>
</html>
