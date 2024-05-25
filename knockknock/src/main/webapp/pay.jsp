<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹 - 결제하기</title>
<link rel="icon" href="./images/favicon.ico" />
<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
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

	<div class="content">
		<!-- Page content goes here -->
	</div>

	<div class="payBox">
        <div>
            <h3>구매정보</h3>
            <hr>
        </div>
        
        <table>
            <tr>
                <td>${proposalInfo.getProposal_product() }</td>
                <td><span>${proposalInfo.getProposal_price() }원</span></td>
            </tr>
            <tr>
                <td>${proposalInfo.getProposal_product() }</td>
                <td><span>${proposalInfo.getProposal_price() }원</span></td>
            </tr>
            <tr>
                <td>${proposalInfo.getProposal_product() }</td>
                <td><span>${proposalInfo.getProposal_price() }원</span></td>
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
        <hr>
        <form action="payController" method="post">
            <h3>배송지 정보</h3>
            <hr>
            <table>
                <tr>
                    <td>주소</td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td>상세주소</td>
                    <td><input type="text" name="detailAdrress"></td>
                </tr>
                <tr>
                    <td>수령인</td>
                    <td><input type="text" name="takeman"></td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td><input type="text" name="phoneNumber"></td>
                </tr>
                <tr>
                    <td>배송 요청사항</td>
                    <td>
                        <select name="deliveryRequest" id="">
                            <option value="none">요청사항 없음</option>
                            <option value="door">문 앞에 놔주세요</option>
                            <option value="secu">경비실에 맡겨주세요</option>
                            <option value="call">배송전에 전화해주세요</option>
                        </select>
                    </td>
                </tr>
            </table>
            <h3>결제정보</h3>
            <hr>
            <table>
                <tr>
                    <td>결제수단</td>
                    <td>
                        <input type="radio" name="payMethod" value="card">카드결제
                        <input type="radio" name="payMethod" value="account">실시간 계좌이체
                        <input type="radio" name="payMethod" value="virtual">무통장입금
                    </td>
                </tr>
            </table>
                <input type="submit" id="button" value="결제하기">
    </form>
    
</div>

</body>
</html>