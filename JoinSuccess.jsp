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

String email=(String)session.getAttribute("email");

%>
<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h1>ȯ���մϴ�!</h1></li>
							<li>ȸ�������� �����մϴ�.</li>
							<!-- request������ ����� ȸ������ �� �̸����� ����Ͻÿ�. -->
							<li>�޼����ý����� ���ο� �̸����� <%=email %>�Դϴ�.</li>
							<li><button onclick='location.href="index.jsp"'>�����ϱ�</button></li>
						</ul>
					</nav>			
			</div>
</body>
</html>