<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    @font-face {

		font-family: 'NanumSquare_ac';
		src: url("fonts/NanumSquare_ac.ttf") format('truetype'); 

	}
    body{
        background-color:whitesmoke;
    }
    .loginform{
        width:1200px;
        height:600px;
        margin:auto;
    }
    .loginform span{
        font-size:15px;
        font-family:'NanumSquare_ac';
    }
    .inputidpw{
        width:320px;
        height:35px;
        font-size:17px;
        font-family:'NanumSquare_ac';
    }
    .inputidpw:focus{
        outline:none;
    }
    .loginbtn{
        width:328px;
        height:60px;
        background-color:#0A6EFF;
        font-family:'NanumSquare_ac';
        font-size:24px;
        border:none;
        color:white;
        transition:all 0.5s;
    }
    .loginbtn:hover{
        background-color:#3232FF;
        border-radius:4px;
        transition:all 0.5s;
    }
</style>
</head>
<% 
response.setCharacterEncoding("utf-8"); // 한글 처리
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=UTF-8");
%>
<body>
<!------------------------------ ▼ 상단 공통 헤더 ▼ ------------------------------>
<div id="headers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {

$("#headers").load("Header.jsp");
});
</script>
<!------------------------------ ▲ 상단 공통 헤더 ▲ ------------------------------>

<br><br><br><br><br>
<form action="LoginServiceCon" method="post">
<div class="loginform" align="center">
<table width="450px">

<tr>
    <td align="center">
        <input type="text"  placeholder="  Email" name="email" class="inputidpw">
    </td>
</tr>
<tr>
    <td align="center">
        <input type="password"  placeholder="  Password" name="pw" class="inputidpw">
    </td>
</tr>

</table>
 <input type="submit" value="로그인" class="loginbtn">
<br>
<br>
<br>
    <span>아직 계정이 없으신가요? <a href="join.jsp">회원가입</a></span>
</form> 
</div>

<!------------------------------ 하단 공통 Footer ------------------------------>
<div id="footers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {
$("#footers").load("Footer.html");
});
</script>
<!------------------------------ 하단 공통 Footer ------------------------------>
</body>
</html>