<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 제안서 작성</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
    <div class="container">
        <header>
            <div>
                <div>
                    <a href="main.jsp">
                        <img src="./images/logo.png" alt="녹녹">
                    </a>
                </div>
                <span class="client">
                    <a href="LogoutController">로그아웃</a>
                    <a href="sellerMypage.jsp">마이페이지</a>
                </span>
            </div>
            <hr>
        </header>
        <main>
            <section class="proposal-section">
                <h2>제안서 작성하기</h2>
                <div class="content">
                
                <!-- requestShow 불러오기 -->
                    <div class="request-details">
                        <h3>OO님의 의뢰서</h3>
                        <div class="details">
                            <p><span>인테리어</span> <span>소형</span></p>
                            <p><span>적음</span> <span>일주일</span></p>
                            <h4>플랜테리어 도와주세요</h4>
                            <p>서지현 님의 의뢰</p>
                            <p>2024.05.18 ~ 2024.05.25</p>
                            <div class="images">
                                <img src="image1.jpg" alt="Image 1">
                                <img src="image2.jpg" alt="Image 2">
                            </div>
                            <p>의뢰인이 설정한 예산: <strong>100,000 원</strong></p>
                            <p>요청 내용: 이번에 서울로 이사를 하게 되었는데 많이 허전하기도 하고 쾌적한 방을 만들고 싶어서 의뢰해봅니다.</p>
                        </div>
                        
                        
                    </div>
                        <div class="proposal-form">
                        <form action="ProposalController" method="post">
                            <div class="form-group">
                                <label for="proposal_name">제목</label>
                                <input type="text" id="proposal_name" name="proposal_name" placeholder="제목을 입력해주세요">
                            </div>
                            <div class="form-group options">
                                <label>옵션</label>
                                <button>추가</button>
                                <input type="text" name="proposal_products" placeholder="옵션 명">
                                <input type="text" name="proposal_price" placeholder="단가">
                                <input type="text" name="proposal_quantity" placeholder="수량">
                            </div>
                            <div class="form-group">
                                <label for="proposal_description">설명입력</label>
                                <textarea id="proposal_description" name="proposal_description"></textarea>
                            </div>
                            <div class="form-group">
                                <strong>최종견적가: ??원</strong>
                                <button type="submit" id="proposal_btn">제안서 제출</button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </main>
    </div>
</body>
</html>