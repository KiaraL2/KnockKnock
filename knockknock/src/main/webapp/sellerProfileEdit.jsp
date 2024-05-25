<%@page import="com.smhrd.model.MemberDAO"%>
<%@page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@page import="com.smhrd.model.CustomerDTO"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>녹녹-플랜테리어 플랫폼</title>
</head>
<body>
    <div class="container" action="ProfileUpdateController" method="post">
        <div class="profile-pic">
            <img src="./profile.jpg" alt="Profile Picture">
            <button class="change-pic-btn">사진 변경</button>
        </div>
        <div class="profile-info">
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" placeholder="변경할 비밀번호를 입력해주세요">
            </div>
            <div class="form-group">
                <label for="password-confirm">비밀번호 확인</label>
                <input type="password" id="password-confirm" placeholder="비밀번호를 다시 입력해주세요">
            </div>
            <div class="form-group">
                <label for="nickname">닉네임</label>
                <input type="text" id="nickname" placeholder="사용할 닉네임을 입력해주세요">
            </div>
            <div class="form-group">
                <label for="address">주소</label>
                <input type="text" id="address" placeholder="변경할 주소를 입력해주세요">
            </div>
            <div class="form-group">
                <label for="phone">전화번호</label>
                <div class="phone-input">
                    <select id="phone-provider">
                        <option value="KT">KT</option>
                        <option value="SKT">SKT</option>
                        <option value="LGU">LGU+</option>
                    </select>
                    <input type="text" id="phone" placeholder="전화번호를 입력해주세요">
                </div>
            </div>
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" id="email" placeholder="이메일을 입력해주세요">
            </div>
            <div class="form-group">
                <label for="homepage">홈페이지 URL</label>
                <input type="text" id="homepage" placeholder="변경할 주소를 입력해주세요">
            </div>
        </div>
        <div class="additional-info">
            <div class="bio">
                <label for="bio">자기소개</label>
                <textarea id="bio"></textarea>
            </div>
            <div class="portfolio">
                <label for="portfolio">포트폴리오</label>
                <textarea id="portfolio"></textarea>
            </div>
        </div>
        <div class="buttons">
		 <button class="update-btn" onclick="updateProfile()">정보수정</button>
         <button class="delete-btn" onclick="deleteProfile()">회원탈퇴</button>
        </div>
    </div>
    
        <script>
        function updateProfile() {
            // 정보 수정 로직을 여기에 추가
            alert("정보수정이 완료되었습니다")
            window.location.href = 'main.jsp';
        }

        function deleteProfile() {
            if (confirm('정말로 회원탈퇴 하시겠습니까?')) {
                // 회원 탈퇴 로직을 여기에 추가

                window.location.href = 'main.jsp'; 
            }
        }
    </script>
</body>
</html>