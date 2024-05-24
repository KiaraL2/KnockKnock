<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>��� - ����������</title>
    <link rel="icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="apple-touch-icon" href="./df27b972333f6d054a66b507a0889949.ico/favicon-16x16.png" />
    <link rel="stylesheet" href="Style.css">

<body>
    <!-- ��� -->
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

    <h1>����������</h1>
    <div class="content">
        <div id="miniProfile">
            <div id="profileDiv1">
                <img src="./����3.jpg" alt="" class="profileImg">
            </div>
            <div id="clientInfo">
                <div id="nickname">
                    <span >������ �г���</span>
                </div>
                <div>
                    <span>�������� : </span><span>2024.01.01</span>
                </div>
            </div>
            <div>
                <div id="updateButton">
                    <a href="update.jsp" class="pageButton">������������</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ���ȳ��� -->
    <div class="content">
        <div>
            <h2>�Ƿ� ����</h2>

            <div class="requestBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>�Ƿ� ����</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>�Ƿ��� ��</span>
                    </div>
                </div>
                <div class="rightBox">
                    <div>
                        <!-- �������� �Ǹ��� -->
                        <div class="proposalCount">

                        </div>
                        <span class="requestStatus onGoing">�Ƿ���</span>
                    </div>
                    <div >
                        <a href="requestShow.jsp" class="pageButton">�Ƿ���Ȳ</a>
                    </div>
                </div>
            </div>
            <div class="requestBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>�Ƿ� ����</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>�Ƿ��� ��</span>
                    </div>
                </div>
                <div>
                    <span class="requestStatus proposalComlete">�ŷ� �Ϸ�</span>
                    <a href="requestShow.jsp" class="pageButton">
                            �ŷ����� ����
                        </a>
                </div>
            </div>
            <div class="requestBox">
                <div class="proposalInfo">
                    <div class="reqTitle">
                        <h3>�Ƿ� ����</h3>
                    </div>
                    <div>
                        <span>2024.05.23 20:07</span>
                    </div>
                    <div>
                        <span>�Ƿ��� ��</span>
                    </div>
                </div>
                <div>
                    <span class="requestStatus reqCancel">�Ƿ� ���</span>
                </div>
            </div>
        </div>
    </div>

</body>

</html>