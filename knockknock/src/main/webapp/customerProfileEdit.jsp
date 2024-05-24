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
        </div>
        <div class="buttons">
            <input type="button" value="정보수정" onclick="">
            <input type="button" value="회원탈퇴" onclick="">
        </div>
    </div>
</body>
</html>