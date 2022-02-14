<%@page import="com.model.MessageDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MessageDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<style>
 
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
	   
	   .board_list .tit:hover {
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
	      
</style>
<head>
<meta charset="EUC-KR">
<title>관리자 시점 고객문의 관리</title>
</head>
<body>

<%



MessageDAO dao=new MessageDAO();

ArrayList<MessageDTO>list=dao.ViewAllMessage();

%>
<h>문의사항</h>


  <br><br>
  <div class="board_list_wrap">
              
               <table class="board_list">
                   
                       <tr>
                           <th><input type="checkbox" name="chk" onclick="checkAll()"></th>
                           <th>번호</th>
                           <th>제목</th>
                           <th>문의일시</th>
                           <th>보내는이</th>
                           <th>비고<th>
                       </tr>
                   </thead>
                   <tbody id="reportList">
                   <%for(int i=0; i<list.size(); i++){ %>
                       <tr>
                           <td><input type="checkbox" name="chk"></td>
                           <td><%=list.get(i).getSeq() %></td>
                           <a href="MessageDetail.jsp"><%=list.get(i).getTitle()%></a>
                           <td><%=list.get(i).getM_date() %></td>
                           <td><%=list.get(i).getE_mail() %></td>
                           <td> <a href="DeleteMessage?seq=<%= list.get(i).getSeq()%>">삭제 </a>
                       </tr>
                       <%} %>
                      
                   </tbody>
               </table>
               <button>선택삭제</button>               
</div>



</body>
</html>