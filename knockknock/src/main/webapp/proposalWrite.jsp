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
                        <img src="./��� �귣��ΰ�-001.png" alt="���">
                    </a>
                </div>
                <span id="headerTitle">���ȼ� �ۼ�</span>
                <span class="client">
                    <a href="">�α׾ƿ�</a>
                    <a href="">����������</a>
                </span>
            </div>
            <hr>
        </header>
        <main>
            <section class="proposal-section">
                <h2>���ȼ� �ۼ��ϱ�</h2>
                <div class="content">
                    <div class="request-details">
                        <h3>OO���� �Ƿڼ�</h3>
                        <div class="details">
                            <p><span>���׸���</span> <span>����</span></p>
                            <p><span>����</span> <span>������</span></p>
                            <h4>�÷��׸��� �����ּ���</h4>
                            <p>������ ���� �Ƿ�</p>
                            <p>2024.05.18 ~ 2024.05.25</p>
                            <div class="images">
                                <img src="image1.jpg" alt="Image 1">
                                <img src="image2.jpg" alt="Image 2">
                            </div>
                            <p>�Ƿ����� ������ ����: <strong>100,000 ��</strong></p>
                            <p>��û ����: �ƺ��� ������ �̻縦 �ϰ� �Ǿ��µ� ���� ���� �����ϱ⵵ �ϰ� ������ ���� ����� �; �Ƿ��غ��ϴ�.</p>
                        </div>
                    </div>
                    <div class="proposal-form">
                        <form>
                            <div class="form-group">
                                <label for="title">����</label>
                                <input type="text" id="title" name="title" value="���� �ڽ��ְ� ���͵帮�ڽ��ϴ�!">
                            </div>
                            <div class="form-group">
                                <label for="file1">÷������</label>
                                <input type="file" id="file1" name="file1">
                            </div>
                            <div class="form-group options">
                                <label>�ɼ� �߰�</label>
                                <input type="text" name="option_name" placeholder="�ɼ� ��">
                                <input type="text" name="price" placeholder="�ܰ�">
                                <input type="text" name="quantity" placeholder="����">
                            </div>
                            <div class="form-group">
                                <label for="description">�����Է�</label>
                                <textarea id="description" name="description"></textarea>
                            </div>
                            <div class="form-group">
                                <strong>����������: ###��</strong>
                                <button type="submit">���ȼ� ����</button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </main>
    </div>
</body>
</html>