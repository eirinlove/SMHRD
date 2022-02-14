<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

    @font-face {
		font-family: 'NanumSquare_ac';
		src: url("fonts/NanumSquare_ac.ttf") format('truetype'); 
    }

    @font-face {
		font-family: 'NanumSquareB';
		src: url("fonts/NanumSquareB.ttf") format('truetype'); 
    }

    .section{
        margin:auto;
        width:1200px;
    }

    .title{
        margin-top:50px;
    }

    .itemtitle{
        color:#101010;
        font-size:25px;
        font-family: 'NanumSquareB';
    }

    .iteminfo{
        color:#101010;
        font-size:12px;
        color:#898989;
    }
    .article{
        text-align: left;
        width: 500px;
    }

    .itempage{
        display:flex;
        margin:auto;
    }

    .imagebox{
        width:625px;
        height:400px;
    }

    .itemstat{
        margin-top:20px;
        width:550px;
    }

    .itemstat span{
        margin-left:20px;
        margin-right:20px;
    }

    .sort{
        background-color: #EAEAEA;
        font-family: 'NanumSquare_ac';
        font-size:17px;
    }

    .info{
        background-color: #F5F5F5;
    }

    .count{
        text-align: center;
        width:80px;
        height:25px;
        font-size:16px;
        border: 1px solid gray;
        backgrond:none;
        border:none;
        color:#555555;
    }

    .price{
        font-size:20px;
    }

    .soldout{
        text-align: center;
        width:inherit;
    }

    .btn{
        width:120px;
        height:30px;
        background-color: #f8f8f8;
        color: #888;
        border: 1px solid #e8e8e8;
        font-size: 12px;
        letter-spacing: 0px;
        cursor: pointer;
        display: inline-block;
        margin: 3px 5px; 
        }

    .btn:hover{
        background-color: #EB0000;
        color: #FFFFFF;
        transition: all 1.1s;

        }

 

</style>
<body >
<% 	String name = (String)request.getAttribute("product_item_name");
	Object price = request.getAttribute("product_item_price");
	Object company = request.getAttribute("product_item_company");
	Object cnt = request.getAttribute("product_item_cnt");
	int cnto = (Integer)cnt;
	String productids = (String)request.getAttribute("product_item_val");
	
	//Object object = request.getAttribute("product_item_object");
	Object object = request.getAttribute("product_item_object");
	System.out.println(productids);
	%>
 

<!------------------------------ ▼ 상단 공통 헤더 ▼ ------------------------------>

<div id="headers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {
$("#headers").load("Header.jsp");
});
</script>

<!------------------------------ ▲ 상단 공통 헤더 ▲ ------------------------------>

<div class="section">
    <div class="title">
        <span class="itemtitle"><%= name %></span>
        <br><br>
        <span class="iteminfo"><%=object %></span>
    </div>
    <br>
    <hr>
    <div class="itempage">
    <div class = "imagebox" align="center">
	<% name = name.replace("/", "_"); %>
        <image height="400px" src="Product\<%=productids%>\<%=name%>.jpg">
    </div>
    <div class="itemstat">
        <table width="550px" "itemstat_table">
            <tr height="60px" class="itemstat_row">
                <td align="center" class="sort">제조사</td>
                <td class="info"><span><%=company %></span></td>
            </tr> 
            <tr height="150px" class="itemstat_row">
                <td align="center" class="sort">택배정보</td>
                <td class="info">
                    <span>일반 PC단품: 결제 완료 후 평균 2.0일</span><br>
                    <span>오버클럭 PC: 결제 완료 후 평균 7.0일</span><br>
                    <span>커스텀 수냉PC : 방문 수령 전용/ 결제 완료 후 평균 9.0일</span>
                </td>
            </tr>
            <tr height="60px" class="itemstat_row">
                <td align="center" class="sort">구매 수량</td>
                <td class="info" align="right">
                    <span><input type="number" min="1" max"95" step="1" class="count"></span>
                </td>
            </tr>
            <tr height="60px">
                <td width ="100px" align="center" class="sort">판매가</td>
                <td class="info" align="right"><span class="price"><%=price %> 원</span></td>
            </tr>
        </table>
        <div align="right">
        <%if(cnto>=1){%>
        <!-- if문써서 품절이 아니면 -->
            <button class="btn">구매하기</button>
            <button class="btn">장바구니</button>
            <span class="soldout">남은수량 : <%=cnt %>개 
            <%}else{%> 품절되었습니다.<%}%></span>
        </div>
    </div>
    </div>
    <hr>
    <div class="specseat" align="center">
        <img src="Spacseat\<%=productids%>\<%=name%>.jpg" width="1000px">
        <!-- 스펙시트 이미지 집어넣으면 됨 -->
    </div>
</div>

<!------------------------------ ▼ 하단 footer ▼ ------------------------------>

<div id="footers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {
$("#footers").load("Footer.html");
});
</script>

<!------------------------------ ▲ 하단 footer ▲ ------------------------------>
</body>
</html>