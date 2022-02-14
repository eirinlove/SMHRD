<%@page import="java.util.List"%>
<%@page import="com.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   


<!DOCTYPE html>
	   <html>
	      <style>
	      * {
	       margin: 0;
	       padding: 0;
	   }
	   
	   table {
	       border-collapse: collapse;
	   }
	   
	   caption {
	       display: none;
	   }
	   
	   a {
	       text-decoration: none;
	       color: inherit;
	   }
	   
	   .board_list_wrap {
	       padding: 50px;
	   }
	   
	   .board_list {
	       width: 100%;
	       border-top: 2px solid green;
	   }
	   
	   .board_list tr {
	       border-bottom: 1px solid #ccc;
	   }
	   
	   .board_list th,
	   .board_list td {
	       padding: 10px;
	       font-size: 14px;
	   }
	   
	   .board_list td {
	       text-align: center;
	   }
	   
	   .board_list .tit {
	       text-align: left;
	   }
	   
	   .board_list .title :hover {
	       text-decoration: underline;
	   }
	   
	   .board_list_wrap .paging {
	       margin-top: 20px;
	       text-align: center;
	       font-size: 0;
	   }
	   .board_list_wrap .paging a {
	       display: inline-block;
	       margin-left: 10px;
	       padding: 5px 10px;
	       border-radius: 100px;
	       font-size: 12px;
	   }
	   .board_list_wrap .paging a:first-child {
	       margin-left: 0;
	   }
	   
	   .board_list_wrap .paging a.bt {
	       border: 1px solid #eee;
	       background: #eee;
	   }
	   
	   .board_list_wrap .paging a.num {
	       border: 1px solid green;
	       font-weight: 600;
	       color: green;
	   }
	   
	   .board_list_wrap .paging a.num.on {
	       background: green;
	       color: #fff;
	   }
	      
	   input{
	   font-size: 16px;
	   width: 325px;
	   padding: 10px;
	   border: 0px;
	   outline: none;
	   float: left;
	   }   
	   
	   button{
	   width: 50px;
	   height: 100%;
	   border: opx; 
	   outline: none; 
	   float: right;
	   color: black;
	   
	   }
		   
		   select {
		width: 200px;
		height: 30px;
		padding-left: 10px;
		font-size: 18px;
		color: black;
		border: 1px solid black;
		border-radius: 3px;
		}
   
   
   
      </style>   

       <head>
           <title>게시판</title>
   <!-- 라이브러리 -제이쿼리, boostrap : cdn 방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    
       </head>
       <body>
    
<!--  ************************* 검색로직 ************************************************************ -->
       <form action="ListServiceCon" method="post">
      <fieldset>
       <select name="f">
       	<option ${(param.f=="title")?"selected":""} value="title">제목</option>
       	<option ${(param.f=="id")?"selected":""} value="id">작성자</option>
       </select>
       	<input type="text" name="q" placeholder="검색란을 입력하세요" value="${param.q }">
       	<input class="btn btn-search" type="submit" value="검색">
       </fieldset> 
       </form>
           <div class="board_list_wrap">
<!-- ************ 리스트 헤더 부분 ************************************************************ -->  
               <table class="board_list">
                   <caption>게시판 목록</caption>
                   <thead>
                       <tr>
                           <th>번호</th> 
                           <th>제목</th>
                           <th>글쓴이</th>
                           <th>작성일</th>
                           <th>조회</th>
                       </tr>
                   </thead>
                   
 <!-- ************ 리스트 출력 부분 ************************************************************ -->      
                   <tbody>
                   <c:forEach var="n" items="${list}">
                       <tr class="datarow">
                           <td class="comid">${n.comid}</td>
                           <td class="title"><a href="DetailServiceCon?comid=${n.comid}">${n.title}</a></td>
                           <td>${n.id}</td>
                           <td>${n.comdate}</td>
                           <td>${n.visit}</td><br>
                       </tr>
                      </c:forEach>
             <tr>  <a href="Board_View/Write.jsp" class="btn btn-default">글쓰기</a></tr>
                   </tbody>
               </table>
               
<!-- *************************페이지 번호 구현************************************************************  -->
          
          
<!-- 1.페이징에 이용될 변수값들 -->          
               <c:set var="page" value="${(param.p==null)?1:param.p}"/>
               <c:set var="startNum" value="${page-(page-1)%5}"/>
               <c:set var="lastNum" value="23"/>
             
<!-- 2.한 페이지 내에서 표현될 페이지번호 0~4  +i값을 해줌으로서 사실상 1~5 ************************************************************-->          
          <div>
               <ul class="-list- center">
            <c:forEach var="i" begin="0" end="4">
            <c:if test="${(startNum+i)<=lastNum}">
               	<li><a class="-text- ${(page==(startNum+i))?'orange':''} bold" href="?p=${startNum+i}&f=${param.f}&q=${param.q}">${startNum+i}</a></li>
            </c:if>
            </c:forEach>
               </ul>
               </div>
               
<!-- 3. 현재페이지 / 전체페이지   << 이런식으로 view 단에서 볼때 현재 페이지의 위치를 출력해주는 부분  ************************************************************-->                        
          <h3 class="hidden">현재 페이지</h3>
          <div><span class="text-orange text-strong">${(empty param.p)?1:param.p }</span> / ${lastNum} pages</div>
               
<!-- ************ 이전 페이지 조건문 ************************************************************************ -->
             <div>
             		<c:if test="${startNum>1}">
					<a class="btn btn-prev" href="?p=${startNum-1}&t=&q=">${startNum-1}</a>
					</c:if>	   
				
					<c:if test="${startNum<=1}">     
					<span class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</span>    
					</c:if>	         
             </div>  
               
               
               
<!-- ************ 다음 페이지 조건문 ************ ************************************************************-->
 			<div>
 				<c:if test="${startNum+5<lastNum}">
				<a href="?p=${startNum+5}&t=&q=" class="btn btn-next" >다음</a>       
				</c:if>	
				<c:if test="${startNum+5>=lastNum }">
				<span class="btn btn-next" onclick="alert('다음 페이지가 없습니다.');">다음</span>          
             </c:if>
             </div>  
               


       </body>
   </html>