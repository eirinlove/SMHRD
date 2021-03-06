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
           <title>?????????</title>
   <!-- ??????????????? -????????????, boostrap : cdn ?????? -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    
       </head>
       <body>
    
<!--  ************************* ???????????? ************************************************************ -->
       <form action="ListServiceCon" method="post">
      <fieldset>
       <select name="f">
       	<option ${(param.f=="title")?"selected":""} value="title">??????</option>
       	<option ${(param.f=="id")?"selected":""} value="id">?????????</option>
       </select>
       	<input type="text" name="q" placeholder="???????????? ???????????????" value="${param.q }">
       	<input class="btn btn-search" type="submit" value="??????">
       </fieldset> 
       </form>
           <div class="board_list_wrap">
<!-- ************ ????????? ?????? ?????? ************************************************************ -->  
               <table class="board_list">
                   <caption>????????? ??????</caption>
                   <thead>
                       <tr>
                           <th>??????</th> 
                           <th>??????</th>
                           <th>?????????</th>
                           <th>?????????</th>
                           <th>??????</th>
                       </tr>
                   </thead>
                   
 <!-- ************ ????????? ?????? ?????? ************************************************************ -->      
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
             <tr>  <a href="Board_View/Write.jsp" class="btn btn-default">?????????</a></tr>
                   </tbody>
               </table>
               
<!-- *************************????????? ?????? ??????************************************************************  -->
          
          
<!-- 1.???????????? ????????? ???????????? -->          
               <c:set var="page" value="${(param.p==null)?1:param.p}"/>
               <c:set var="startNum" value="${page-(page-1)%5}"/>
               <c:set var="lastNum" value="23"/>
             
<!-- 2.??? ????????? ????????? ????????? ??????????????? 0~4  +i?????? ??????????????? ????????? 1~5 ************************************************************-->          
          <div>
               <ul class="-list- center">
            <c:forEach var="i" begin="0" end="4">
            <c:if test="${(startNum+i)<=lastNum}">
               	<li><a class="-text- ${(page==(startNum+i))?'orange':''} bold" href="?p=${startNum+i}&f=${param.f}&q=${param.q}">${startNum+i}</a></li>
            </c:if>
            </c:forEach>
               </ul>
               </div>
               
<!-- 3. ??????????????? / ???????????????   << ??????????????? view ????????? ?????? ?????? ???????????? ????????? ??????????????? ??????  ************************************************************-->                        
          <h3 class="hidden">?????? ?????????</h3>
          <div><span class="text-orange text-strong">${(empty param.p)?1:param.p }</span> / ${lastNum} pages</div>
               
<!-- ************ ?????? ????????? ????????? ************************************************************************ -->
             <div>
             		<c:if test="${startNum>1}">
					<a class="btn btn-prev" href="?p=${startNum-1}&t=&q=">${startNum-1}</a>
					</c:if>	   
				
					<c:if test="${startNum<=1}">     
					<span class="btn btn-prev" onclick="alert('?????? ???????????? ????????????.');">??????</span>    
					</c:if>	         
             </div>  
               
               
               
<!-- ************ ?????? ????????? ????????? ************ ************************************************************-->
 			<div>
 				<c:if test="${startNum+5<lastNum}">
				<a href="?p=${startNum+5}&t=&q=" class="btn btn-next" >??????</a>       
				</c:if>	
				<c:if test="${startNum+5>=lastNum }">
				<span class="btn btn-next" onclick="alert('?????? ???????????? ????????????.');">??????</span>          
             </c:if>
             </div>  
               


       </body>
   </html>