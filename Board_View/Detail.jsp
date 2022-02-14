<%@page import="com.model.BoardDAO"%>
<%@page import="com.model.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>글 상세보기</title>
</head>
<style>
    .title{
        text-align: center;
        width: 100px;
    }
    .article{
        text-align: left;
        width: 500px;

    }
    button{
        width:100px;
        height:50px;
    }
</style>
<body >

    <h1>게시글 상세보기</h1>
    
    <table border=1>
      <tr>
        <td class="title">글번호</td>
        <td class="article" height=50px>${n.comid}</td>
    </tr>
    <tr>
        <td class="title">제목</td>
        <td class="article" height=50px>${n.title}</td>
    </tr>
    <tr>
        <td class="title">작성자</td><td>${n.id}></td>
    </tr>
    <tr>
        <td class="title">작성시간</td>
        <td class="article" height=50px>${n.comdate}</td>
    </tr>
    <tr >
        <td class="title">내용</td>
        <td class="article" height=200px> ${n.content} 파일위치: ${n.filerealname} <img src="${n.filerealname}" width="600" height="600"></td>
    </tr>
      <tr >
        <td class="title">조회수</td>
        <td class="article" height=200px>${n.visit}</td>
    </tr>
   
    </table>
 
	<br>
    <a href="update.jsp?comid=${n.comid}" class="btn btn-default">수정</a> <br>
    <a href="delete?comid=${n.comid}" class="btn btn-default">삭제</a> <br>
    <a href="ListServiceCon">목록으로</a> <br>

    
    
    
    <table border=1>
    <!---------------------------------------->
    <tr>
        <td class="title">작성자</td>
        <td class="article" height=50px> "댓글 내용 불러오면 됨"</td>
    </tr>
    
    </table>
    <!----이부분 for문으로 반복해서 댓글 표시 하면 될듯-->
    
    <div>
    <div>
    <textarea cols="70" rows="10"></textarea>
        <!-- 최대 입력가능한 수만큼 cols x rows로 맞추셈 -->
    </div>
    
    <div>
    <button>댓글 작성</button><input type="text" placeholder="임시 비밀번호">
    </div>
        
        
    </div>
</body>
</html>