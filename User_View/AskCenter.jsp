<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
MemberDTO info=(MemberDTO)session.getAttribute("info");
System.out.println(info);
%>
<div>
<h>고객센터 문의</h>
</div>
<br>
<form action="../AskCenter" method="post">
<table>
		<tbody>
		<tr>
			<th>질문 종류 : </th>
			<td><select id="kind" name="kind" size="1">
			    <option value="">선택하세요</option>
				<option value="상품문의">상품문의</option>
				<option value="견적문의">견적문의</option>
				<option value="불만사항">불만사항</option>
			</select>
			
			</td>
			</tr>
			<tr>
				<th> 제목 : </th>
				<td><input type="text" placeholder="제목을 입력하세요." name="title"></td>
	</tr>
			<tr>
				<th> 내용 : </th>
				<td><textarea cols="30" placeholder="내용을 입력하세요." name="content"></textarea></td>
	</tr>
			<tr>
				<th> 아이디 : </th>
				<td><input type="text"  name="email" readonly="readonly" value="<%=info.getEmail() %>"></td>
	
		<td>
			<input type="submit" value="등록">
	      
		</td>
		</tr>
		</tbody></table></form>
	</body>
	</html>

	