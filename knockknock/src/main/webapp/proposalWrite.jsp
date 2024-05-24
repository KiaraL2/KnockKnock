<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <header>
            <div>
                <div>
                    <a href="main.jsp">
                        <img src="./녹녹 브랜드로고-001.png" alt="녹녹">
                    </a>
                </div>
                <span id="headerTitle">제안서 작성</span>
                <span class="client">
                    <a href="">로그아웃</a>
                    <a href="">마이페이지</a>
                </span>
            </div>
            <hr>
        </header>
        <main>
            <section class="proposal-section">
                <h2>제안서 작성하기</h2>
                <div class="content">
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
                            <p>요청 내용: 아빠에 자율로 이사를 하게 되었는데 많이 많이 허전하기도 하고 쾌적한 방을 만들고 싶어서 의뢰해봅니다.</p>
                        </div>
                    </div>
                    <div class="proposal-form">
                        <form>
                            <div class="form-group">
                                <label for="title">제목</label>
                                <input type="text" id="title" name="title" value="제가 자신있게 도와드리겠습니다!">
                            </div>
                            <div class="form-group">
                                <label for="file1">첨부파일</label>
                                <input type="file" id="file1" name="file1">
                            </div>
                            <div class="form-group options">
                                <label>옵션 추가</label>
                                <input type="text" name="option_name" placeholder="옵션 명">
                                <input type="text" name="price" placeholder="단가">
                                <input type="text" name="quantity" placeholder="수량">
                            </div>
                            <div class="form-group">
                                <label for="description">설명입력</label>
                                <textarea id="description" name="description"></textarea>
                            </div>
                            <div class="form-group">
                                <strong>최종견적가: ###원</strong>
                                <button type="submit">제안서 제출</button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </main>
    </div>
</body>
</html>