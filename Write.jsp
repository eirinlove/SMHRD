<%@page import="com.model.BoardDAO"%>
<%@page import="com.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style>
        @font-face {
		font-family: 'NanumSquare_acL';
		src: url("fonts/NanumSquare_acL.ttf") format('truetype'); 
        }
        @font-face {
		font-family: 'NanumSquare_acR';
		src: url("fonts/NanumSquare_acR.ttf") format('truetype'); 
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
    .qnainput_idpw{
        background: none;
        width: 197px;
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
    .btan{
            
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
    <title>SMHRD</title>
</head>
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
<form action="../write" method="post" enctype="multipart/form-data">
    <table class="qnaform">
        <tr>
        <td class="infosort">제목</td>
        <td class="qnainputbox">
            <input type="text" placeholder="제목을 입력하세요." name="title" class="qnainput">
        </td>
        </tr>
        <tr>
        <td class="infosort">내용</td>
        <td class="qnainputbox">
        <textarea rows="10" cols="30" placeholder="내용을 입력하세요." name="content" class="qnainput_field" style="resize :none";></textarea>
        </td>
        </tr>
        <tr>
        <td class="infosort">ID/PW</td>
        <td class="qnainputbox">
        <input type="text" name="id" class="qnainput_idpw"><input type="text" name="pass" class="qnainput_idpw" >
        </td>
        </tr>
        <tr>
        <td class="infosort">파일첨부</td>
        <td class="qnainputbox">
        <input type="file" name="file" size=40 class="btan">
        </td>

        </tr>
        <tr>
        <td colspan="2" align="center"><input type="submit" value="작성하기" class="qnasubmit"></td>
        </tr>
    </table>
    </form>

</body>
</html>