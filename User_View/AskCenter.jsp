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
<h>������ ����</h>
</div>
<br>
<form action="../AskCenter" method="post">
<table>
		<tbody>
		<tr>
			<th>���� ���� : </th>
			<td><select id="kind" name="kind" size="1">
			    <option value="">�����ϼ���</option>
				<option value="��ǰ����">��ǰ����</option>
				<option value="��������">��������</option>
				<option value="�Ҹ�����">�Ҹ�����</option>
			</select>
			
			</td>
			</tr>
			<tr>
				<th> ���� : </th>
				<td><input type="text" placeholder="������ �Է��ϼ���." name="title"></td>
	</tr>
			<tr>
				<th> ���� : </th>
				<td><textarea cols="30" placeholder="������ �Է��ϼ���." name="content"></textarea></td>
	</tr>
			<tr>
				<th> ���̵� : </th>
				<td><input type="text"  name="email" readonly="readonly" value="<%=info.getEmail() %>"></td>
	
		<td>
			<input type="submit" value="���">
	      
		</td>
		</tr>
		</tbody></table></form>
	</body>
	</html>

	