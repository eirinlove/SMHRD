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
<h2><%=info.getEmail()%>님의 마이페이지입니다</h2>
<p>
이메일: <%=info.getEmail() %> <br>
패스워드: <%=info.getPw() %><br>
이름: <%=info.getName() %><br>
전화번호 : <%=info.getTel() %><br>
주소 : <%=info.getAddress()%><br>
</p>
<button><a href="MypageUpdate.jsp">회원정보 수정</a></button>
<button><a href="../OutServiceCon">회원탈퇴</button>
</div>
</body>
</html>