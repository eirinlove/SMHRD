<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
.total { text-align : right;
		 font-size : 20px;
		 color: blue

}
</style>
<meta charset="EUC-KR">
<title>���� ������ �Դϴ�</title>
</head>
<body>
<%
MemberDTO info=(MemberDTO)session.getAttribute("info");

%>
<div>
<h2>���� ������ �Դϴ�</h2>


<form action="../MypageUpdate" method="post">
�̸���:<input type="text" name="email" readonly="readonly" value="<%=info.getEmail()%>"><br>
�н�����:<input type="text" placeholder="�н����带 �Է��ϼ���." name="pw"><br>
�̸�:<input type="text" placeholder="�̸��� �Է��ϼ���." name="name"><br>
��ȭ��ȣ :<input type="text" placeholder="��ȭ��ȣ�� �Է��ϼ���." name="tel"><br>
�ּ� : <input type="text" placeholder="�ּҸ� �Է��ϼ���." name="address"> <br>
<input type="submit" value="Ȯ��">
</form>
</div>
</body>
</html>