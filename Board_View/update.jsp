<%@page import="com.model.BoardDTO"%>
<%@page import="com.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 수정</title>

  <!-- 라이브러리 -제이쿼리, boostrap : cdn 방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- 취소 버튼을 누르면 전 페이지인 상세보기 페이지로 이동 -->
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
		글번호:<input type="text" id="comid" name="no" readonly="readonly " value="${dto.comid }" >
		아이디:<input type="text" name="id" value=" ${dto.comid }"   title="운지를 해야합니다" required ="required" >
		비밀번호:<input type="text" name="pass" title="비번을 입력하셔야합니다" required ="required" ><br>
		제목:<input type="text" name="title" title="제목을 입력하셔야합니다" required ="required" placeholder="제목을 5글자이상으로 입력하세요" ><br>
		내용:<textarea name="content" rows="10" cols="30" style="resize :none;"  title="내용 입력해 씨발련아" required ="required"></textarea><br>
		
		<input type="submit" value="수정">
		<button class="btn btn-default" type="reset">다시입력</button>
		<button class="btn btn-default" type="button" id="cancelBtn">취소</button>
		
		
		</form>
	</div>

</body>
</html>