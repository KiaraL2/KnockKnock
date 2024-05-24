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
            <button class="change-pic-btn">���� ����</button>
        </div>
        <div class="profile-info">
            <div class="form-group">
                <label for="password">��й�ȣ</label>
                <input type="password" id="password" placeholder="������ ��й�ȣ�� �Է����ּ���">
            </div>
            <div class="form-group">
                <label for="password-confirm">��й�ȣ Ȯ��</label>
                <input type="password" id="password-confirm" placeholder="��й�ȣ�� �ٽ� �Է����ּ���">
            </div>
            <div class="form-group">
                <label for="nickname">�г���</label>
                <input type="text" id="nickname" placeholder="����� �г����� �Է����ּ���">
            </div>
            <div class="form-group">
                <label for="address">�ּ�</label>
                <input type="text" id="address" placeholder="������ �ּҸ� �Է����ּ���">
            </div>
            <div class="form-group">
                <label for="phone">��ȭ��ȣ</label>
                <div class="phone-input">
                    <select id="phone-provider">
                        <option value="KT">KT</option>
                        <option value="SKT">SKT</option>
                        <option value="LGU">LGU+</option>
                    </select>
                    <input type="text" id="phone" placeholder="��ȭ��ȣ�� �Է����ּ���">
                </div>
            </div>
            <div class="form-group">
                <label for="email">�̸���</label>
                <input type="email" id="email" placeholder="�̸����� �Է����ּ���">
            </div>
        </div>
        <div class="buttons">
            <input type="button" value="��������" onclick="">
            <input type="button" value="ȸ��Ż��" onclick="">
        </div>
    </div>
</body>
</html>