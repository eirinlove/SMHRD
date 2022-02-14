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
<title>수정 페이지 입니다</title>
</head>
<body>
<%
MemberDTO info=(MemberDTO)session.getAttribute("info");

%>
<div>
<h2>수정 페이지 입니다</h2>


<form action="../MypageUpdate" method="post">
이메일:<input type="text" name="email" readonly="readonly" value="<%=info.getEmail()%>"><br>
패스워드:<input type="text" placeholder="패스워드를 입력하세요." name="pw"><br>
이름:<input type="text" placeholder="이름을 입력하세요." name="name"><br>
전화번호 :<input type="text" placeholder="전화번호를 입력하세요." name="tel"><br>
주소 : <input type="text" placeholder="주소를 입력하세요." name="address"> <br>
<input type="submit" value="확인">
</form>
</div>
</body>
</html>