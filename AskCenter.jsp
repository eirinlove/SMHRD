<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    @font-face {

		font-family: 'NanumSquareB';
		src: url("fonts/NanumSquareB.ttf") format('truetype'); 
	}
    .title{
        width:500px;
        margin:auto;
    }
    .title span{
        font-size:17px;
        font-family: 'NanumSquareB';

    }
    .qnaform{
        margin:auto;
        width:500px;
        color:black;
        font-size:17px;
    }
    .qnaform tr{
        height:40px;    
    }
    .infosort{
        background-color:lightgray;
        width:100px;
        text-align: center;-
    }
    .qnainputbox{
        border-top:1px solid lightgray;
        border-bottom:1px solid lightgray;
        border-collapse: none;
    }
    .qnainput{
        background: none;
        width: 400px;
        text-align: center;
        border-radius: 5px;
        border: 1px solid lightgray;
        height:25px;
    }
    .qnainput_field{
        background: none;
        width: 400px;
        text-align: center;
        border-radius: 5px;
        border: 1px solid lightgray;
        height:250px;
    }
    .qnainput:focus{
        outline:none;
    }
    .qnainput_field:focus{
        outline:none;
    }
    .qnasubmit{
        width:150px;
        height:50px;
        font-size:20px;
        font-family: 'NanumSquareB';
        border:none;
        color:white;
        background-color:#EB3232;
        transition: all 0.5s;
    }
    .qnasubmit:hover{
        width:160px;
        height:60px;
        font-size:22px;
        font-family: 'NanumSquareB';
        border:none;
        color:white;
        background-color:#EB3232;
        border-radius: 5px;
        transition: all 0.5s;
    }
    button{
        border:none;
        background-color:#555555;
        color:white;
        height:20px;
        font-size: 12px;
        transition: all 0.5s;
        
    }
    button:hover{
        border: solid 1px white;
        border-radius: 40px;
        background-color:#222222;
        transition: all 0.5s;
    }
    #idcheck_t{
        font-size:14px;
        color:dodgerblue;
    }
    #idcheck_f{
        font-size:14px;
        color:red;
    }

</style>    
    

</head>
<body>
<%
MemberDTO info=(MemberDTO)session.getAttribute("info");
System.out.println(info);
%>
    
    
<div class="title">
    <span>???????????? ??????</span>
</div><br>
<div>
<form action="../AskCenter" method="post">
    <table class="qnaform">
        <tr>
        <td class="infosort">?????? ??????</td>
        <td class="qnainputbox">
            <select id="kind" name="kind" size="1" class="qnainput">
			    <option value="">???????????????</option>
				<option value="????????????">????????????</option>
				<option value="????????????">????????????</option>
				<option value="????????????">????????????</option>
			</select>
        </td>
        <tr>
        <td class="infosort">ID</td>
        <td class="qnainputbox">
            <span name="email"><%=info.getEmail() %></span>
        </td>
        </tr>
        </tr>
        <tr>
        <td class="infosort">??????</td>
        <td class="qnainputbox">
            <input type="text" placeholder="????????? ???????????????." name="title" class="qnainput">
        </td>
        </tr>
        <tr>
        <td class="infosort">?????? ??????</td>
        <td class="qnainputbox">
            <textarea cols="30" placeholder="????????? ???????????????." name="content" class="qnainput_field"></textarea>
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center"><input type="submit" value="????????????" class="qnasubmit"></td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
