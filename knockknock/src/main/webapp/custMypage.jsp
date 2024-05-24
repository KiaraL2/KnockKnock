<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>녹녹 - 마이페이지</title>
    <link rel="icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="apple-touch-icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="stylesheet" href="Style.css">

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

    <h1>마이페이지</h1>
    <div class="content">
        <div id="miniProfile">
            <div id="profileDiv1">
                <img src="./꽃집3.jpg" alt="" class="profileImg">
            </div>
            <div id="clientInfo">
                <div id="nickname">
                    <span >구매자 닉네임</span>
                </div>
                <div>
                    <span>가입일자 : </span><span>2024.01.01</span>
                </div>
            </div>
            <div>
                <div id="updateButton">
                    <a href="update.jsp" class="pageButton">개인정보수정</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 제안내역 -->
    <div class="content">
        <div>
            <h2>의뢰 내역</h2>

            <div class="requestBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>의뢰 제목</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>의뢰자 님</span>
                    </div>
                </div>
                <div class="rightBox">
                    <div>
                        <!-- 제안중인 판매자 -->
                        <div class="proposalCount">

                        </div>
                        <span class="requestStatus onGoing">의뢰중</span>
                    </div>
                    <div >
                        <a href="requestShow.jsp" class="pageButton">의뢰현황</a>
                    </div>
                </div>
            </div>
            <div class="requestBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>의뢰 제목</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>의뢰자 님</span>
                    </div>
                </div>
                <div>
                    <span class="requestStatus proposalComlete">거래 완료</span>
                    <a href="requestShow.jsp" class="pageButton">
                            거래내역 보기
                        </a>
                </div>
            </div>
            <div class="requestBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>의뢰 제목</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>의뢰자 님</span>
                    </div>
                </div>
                <div>
                    <span class="requestStatus reqCancel">의뢰 취소</span>
                </div>
            </div>
        </div>
    </div>

</body>

</html>