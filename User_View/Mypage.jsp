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
<title>Insert title here</title>
</head>
<body>

<%
MemberDTO info=(MemberDTO)session.getAttribute("info");

%>
<div>
<h2><%=info.getEmail()%>���� �����������Դϴ�</h2>
<p>
�̸���: <%=info.getEmail() %> <br>
�н�����: <%=info.getPw() %><br>
�̸�: <%=info.getName() %><br>
��ȭ��ȣ : <%=info.getTel() %><br>
�ּ� : <%=info.getAddress()%><br>
</p>
<button><a href="MypageUpdate.jsp">ȸ������ ����</a></button>
<button><a href="../OutServiceCon">ȸ��Ż��</button>
</div>
</body>
</html>