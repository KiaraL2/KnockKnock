<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
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

	<div class="payBox">
		<div>
			<h3>구매정보</h3>
			<hr>
		</div>

		<table>
			<!-- <tr>
				<td><span class="optionProduct">${proposalInfo.getProposal_products()}</span></td>
				<td><span class="price">${proposalInfo.getProposal_price()}</span>원</td>
			</tr> -->
			<tr>
				<td><span class="optionProduct">고무나무</span></td>
				<td><span class="price">50000</span>원</td>
			</tr>
			<tr>
				<td><span class="optionProduct">영양제</span></td>
				<td><span class="price">15000</span>원</td>
			</tr>
			<tr>
				<td>계</td>
				<td><span id="totalPrice">0원</span></td>
			</tr>
		</table>
		<hr>
		<table>
			<tr>
				<td>중개 수수료</td>
				<td><span class="addprice">3,000원</span></td>
			</tr>
			<tr>
				<td>배송비</td>
				<td><span class="addprice">3,000원</span></td>
			</tr>
		</table>
		<h3>총 <span id="final_price">0원</span></h3>
		<hr>
		
		<script>
		function calculateTotalPrice() {
			// 모든 가격 요소를 선택합니다.
			const priceElements = document.querySelectorAll('.price');
			let total = 0;
			
			// 각 가격 요소에서 숫자를 추출하고 합산합니다.
			priceElements.forEach(priceElement => {
				// "원"을 제거하고 숫자로 변환합니다.
				const priceText = priceElement.textContent.replace('원', '').replace(/,/g, '');
				const price = parseFloat(priceText);
				total += price;
			});
			
			// 총 가격을 천 단위 콤마와 "원"을 포함하여 업데이트합니다.
			document.getElementById('totalPrice').textContent = total.toLocaleString() + '원';
		}
		
		function calculateFinalPrice() {
			// 총 상품 가격을 계산합니다.
			calculateTotalPrice();
			
			// 총 가격 요소를 가져옵니다.
			const totalPriceElement = document.getElementById('totalPrice');
			const totalPriceText = totalPriceElement.textContent.replace('원', '').replace(/,/g, '');
			let finalPrice = parseFloat(totalPriceText);
			
			// 모든 추가 가격 요소를 선택합니다.
			const addPriceElements = document.querySelectorAll('.addprice');
			
			// 각 추가 가격 요소에서 숫자를 추출하고 합산합니다.
			addPriceElements.forEach(addPriceElement => {
				const addPriceText = addPriceElement.textContent.replace('원', '').replace(/,/g, '');
				const addPrice = parseFloat(addPriceText);
				finalPrice += addPrice;
			});
			
			// 최종 가격을 천 단위 콤마와 "원"을 포함하여 업데이트합니다.
			document.getElementById('final_price').textContent = finalPrice.toLocaleString() + '원';
		}
		
		// 페이지 로드 시 총 가격을 계산합니다.
		window.onload = calculateFinalPrice;
		</script>
		
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
					<td><select name="deliveryRequest" id="">
							<option value="none">요청사항 없음</option>
							<option value="door">문 앞에 놔주세요</option>
							<option value="secu">경비실에 맡겨주세요</option>
							<option value="call">배송전에 전화해주세요</option>
					</select></td>
				</tr>
			</table>
			<h3>결제정보</h3>
			<hr>
			<table>
				<tr>
					<td>결제수단</td>
					<td><input type="radio" name="payMethod" value="card">카드결제
						<input type="radio" name="payMethod" value="account">실시간
						계좌이체 <input type="radio" name="payMethod" value="virtual">무통장입금
					</td>
				</tr>
			</table>
			<input type="submit" id="button" value="결제하기">
		</form>

	</div>

	<script type="text/javascript" src="./assets/js/header.js"></script>
</body>
</html>