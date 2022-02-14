<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDAO"%>
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
<title>Insert title here</title>
</head>
<body>
<%
MemberDAO dao=new MemberDAO();
ArrayList<MemberDTO> list=dao.SelectMember();

%>
<h>회원 정보 관리</h>

  <br><br>
  <div class="board_list_wrap">
              
               <table class="board_list">
                       <tr>
                           <th><input type="checkbox" name="chk"></th>
                           <th>번호</th>
                           <th>회원 이메일</th>
                           <th>회원 비밀번호</th>
                           <th>회원 이름</th>
                           <th>회원 휴대폰번호</th>
                           <th>회원 주소</th>
                        
                       </tr>
                   </thead>
                   <tbody>
                   <%for(int i=0; i<list.size(); i++){ %>
                       <tr>
                           <td><input type="checkbox" name="chk"></td>
                           <td class="tit"> <%=list.get(i).getSeq() %></td>
                           <td><%=list.get(i).getEmail() %></td>
                           <td><%=list.get(i).getPw() %></td>
                           <td><%=list.get(i).getName() %></td>
                           <td><%=list.get(i).getTel() %></td>
                           <td><%=list.get(i).getAddress()%></td>
                       </tr>
                     <%} %>
                   </tbody>
               </table>
           
                       
</div>
</body>
</html>