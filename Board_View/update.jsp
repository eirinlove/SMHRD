<%@page import="com.model.BoardDTO"%>
<%@page import="com.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ����</title>

  <!-- ���̺귯�� -��������, boostrap : cdn ��� -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- ��� ��ư�� ������ �� �������� �󼼺��� �������� �̵� -->
<script type="text/javascript">
$(function(){
	$("#cancelBtn").click(function(){
		history.back();
		
	});
});

</script>
</head>
<body>
<%
int comid=Integer.parseInt(request.getParameter("comid"));
BoardDAO dao=new BoardDAO();

BoardDTO dto=new BoardDTO();

dto=dao.detail(comid);

request.setAttribute("dto",dto);

%>


	<div>
	<form action="update?comid=${dto.comid }" method="post">
		�۹�ȣ:<input type="text" id="comid" name="no" readonly="readonly " value="${dto.comid }" >
		���̵�:<input type="text" name="id" value=" ${dto.comid }"   title="������ �ؾ��մϴ�" required ="required" >
		��й�ȣ:<input type="text" name="pass" title="����� �Է��ϼž��մϴ�" required ="required" ><br>
		����:<input type="text" name="title" title="������ �Է��ϼž��մϴ�" required ="required" placeholder="������ 5�����̻����� �Է��ϼ���" ><br>
		����:<textarea name="content" rows="10" cols="30" style="resize :none;"  title="���� �Է��� ���߷þ�" required ="required"></textarea><br>
		
		<input type="submit" value="����">
		<button class="btn btn-default" type="reset">�ٽ��Է�</button>
		<button class="btn btn-default" type="button" id="cancelBtn">���</button>
		
		
		</form>
	</div>

</body>
</html>