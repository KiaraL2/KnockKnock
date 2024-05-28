<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.RequestDAO"%>
<%@page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@page import="com.smhrd.model.CustomerDTO"%>
<%@page import="com.smhrd.model.RequestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="com.smhrd.db.SqlSessionManager"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹-플랜테리어 플랫폼</title>
<link rel="icon" href="./images/favicon.ico" />

<link rel="apple-touch-icon" href="./images/favicon.ico" />
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<!-- 헤더 -->
	<div id="header-container"></div>

	<div id="main">
		<div class="filter_section">
			<div class="filter-box">
				<div class="filter">
					<label for="usage">용도</label> <select id="usage">
						<option value="all">전체</option>
						<option value="interior">인테리어</option>
						<option value="eat">식용</option>
						<option value="guitar">기타</option>
					</select>
					<label for="size">수령방법</label> <select id="receipt">
						<option value="any">무관</option>
						<option value="online">온라인 배송</option>
						<option value="offline">현장 픽업</option>
					</select>
					<label for="lighting">진행상태</label> <select id="status">
						<option value="onGoing">진행중</option>
						<option value="completed">거래완료</option>
						<option value="canceled">의뢰취소</option>
					</select>
				</div>
			</div>
			<div class="search_button">
				<input type="reset" value="초기화" class="resetButton"> <input type="button"
					value="검색" class="button">
			</div>
		</div>
		<section class="requests_section">
            <div class="Button">
                <a type="button" href="requestWrite.jsp" >의뢰서작성</a>
            </div>

            <div class="recommand">
                <h2>추천 의뢰서</h2>
            <div class="recommand_list">
                <a href="requestShow.jsp">
                    <div class="mainRequest">
                        <div><span>2024.05.27.</span></div>
                        <div>골드 이상만 제안받아요</div>
                        <div class="proposalCount">2</div>
                        <div class="status onGoing">진행중</div>
                    </div>

                </a>
            </div>

            </div>
            <h2>전체 의뢰서</h2>
            <div class="request_list">
                <a href="requestShow.jsp">
                    <div class="mainRequest">
                        <div><span>2024.05.28.</span></div>
                        <div>인테리어용 식물 추천좀요</div>
                        <div class="proposalCount">4</div>
                        <div class="status onGoing">진행중</div>
                    </div>
                </a>
                <a href="requestShow.jsp">
                    <div class="mainRequest">
                        <div><span>2024.05.28.</span></div>
                        <div>인테리어용 식물 추천좀요</div>
                        <div class="proposalCount">4</div>
                        <div class="status proposalComlete">거래 완료</div>
                    </div>
                </a>
            </div>
				<!-- 의뢰서리스트 올부분 -->
				<c:set var="seller_no" value="${sessionScope.userInfo.getSeller_no()}"></c:set>
				<c:if test="${sessionScope.userInfo.getSeller_no() ne null}">
					<ul>
						<c:forEach var="recList"
							items="${RequestDAO.requestRecommend(seller_no)}">
							<li>${recList.getReq_no()}</li>
						</c:forEach>
					</ul>
				</c:if>
		</section>
	</div>
	<script type="text/javascript" src="./assets/js/header.js"></script>
</body>
</html>
