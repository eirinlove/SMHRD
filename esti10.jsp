<%@page import="java.text.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @font-face {
		font-family: 'NanumSquare_acL';
		src: url("fonts/NanumSquare_acL.ttf") format('truetype'); 
        }
        @font-face {
		font-family: 'NanumSquare_acR';
		src: url("fonts/NanumSquare_acR.ttf") format('truetype'); 
        }
        
        a:link{ text-decoration:none;} 
        a:visited{ text-decoration:none;} 
        a:active{ text-decoration:none;} 
        a:hover{ text-decoration:none;} 
        .section{
            font-family: 'NanumSquare_acL';
            width:1200px;
            margin:auto;
        }
        .est_title{
            font-size:40px;
            animation: title_fadein 2.5s;
            -moz-animation: title_fadein 2.5s;
            -webkit-animation: title_fadein 2.5s;
            -o-animation: title_fadein 2.5s;
        }
        @keyframes title_fadein {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        .est_list{
            animation: section_fadein 3.5s;
            -moz-animation: section_fadein 3.5s;
            -webkit-animation: section_fadein 3.5s;
            -o-animation: section_fadein 3.5s;
        }
        @keyframes section_fadein {
            0% {
                opacity: 0;
            }
            30%{
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        .section table{
            
            font-size: 20px;
        }
        .est_sort{
            text-align: center;
            background-color: #BBBBBB;
            
        }
        .est_index{
            text-align: right;
            border-bottom:1px solid black;
        }
        #index1{
            border-top:1px solid black;
        }
        .estibtn{
            height:40px;
            border:1px solid black;
            border-radius: 50px;
            color:black;
            font-size:20px;
            transition:all 0.7s;
        }
        .estibtn:hover{
            border:none;
            background-color:#CD0000;
            color:white;
            font-size:21px;
            transition:all 0.7s;
        }
    </style>
    <title>Document</title>
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
<%	session.setAttribute("pro_cpu",  "i5-10400");
	session.setAttribute("pro_cpu_price", "187850");
	session.setAttribute("pro_mother",  "ASRock B460M 스틸 레전드");
	session.setAttribute("pro_mother_price", "132000");
	session.setAttribute("pro_memory",  "TeamGroup T-Force DDR4-3200 CL16 Delta");
	session.setAttribute("pro_memory_price", "109800");
	session.setAttribute("pro_gpu",  "MSI 지포스 GTX1660 SUPER 벤투스 OC D6 6GB");
	session.setAttribute("pro_gpu_price", "435000");
	session.setAttribute("pro_power",  "잘만 MegaMax 600W 80PLUS STANDARD");
	session.setAttribute("pro_power_price", "46260");
	session.setAttribute("pro_device",  "삼성전자 970 EVO M.2 NVMe");
	session.setAttribute("pro_device_price", "98940");
	session.setAttribute("pro_case",  "ABKO NCORE 베놈 식스LED 강화유리");
	session.setAttribute("pro_case_price", "39500");
	session.setAttribute("pro_keyboard",  "ABKO HACKER K660 BLACK");
	session.setAttribute("pro_keyboard_price", "45900");
	session.setAttribute("pro_mouse",  "로지텍 G304 LIGHTSPEED WIRELESS BLACK");
	session.setAttribute("pro_mouse_price", "58450");
	session.setAttribute("pro_monitor",  "한성컴퓨터 ULTRON 3278 QHD NEW");
	session.setAttribute("pro_monitor_price", "239000");%>
<br><br><br><br>
<div class="section" align="center">
    <span class="est_title">견적 결과</span><br><br><br>
    <table class="est_list">
        <tr>
            <td class="est_sort" height="60px">CPU</td><td class="est_index" id="index1">i5-10400 | 187,850원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">메인보드</td><td class="est_index">ASRock B460M 스틸 레전드 | 132,000원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">메모리</td><td class="est_index">TeamGroup T-Force DDR4-3200 CL16 Delta | 109,800원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">그래픽카드</td><td class="est_index">MSI 지포스 GTX1660 SUPER 벤투스 OC D6 6GB | 435,000원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">파워서플라이</td><td class="est_index">잘만 MegaMax 600W 80PLUS STANDARD | 46,260원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">HDD/SSD</td><td class="est_index">삼성전자 970 EVO M.2 NVMe | 98,940원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">케이스</td><td class="est_index">ABKO NCORE 베놈 식스LED 강화유리 | 39,500원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">키보드</td><td class="est_index">ABKO HACKER K660 BLACK | 45,900원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">마우스</td><td class="est_index">로지텍 G304 LIGHTSPEED WIRELESS BLACK | 58,450원</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">모니터</td><td class="est_index">한성컴퓨터 ULTRON 3278 QHD NEW | 239,000원</td>
        </tr>
        <tr>
            <td align="left">총액 : 1,392,700 원</td>
            <td align="right"><a href="estimateObject?product=cpu&page=estimate"><button class="estibtn">내 견적함으로</button></a>&nbsp;
            <button class="estibtn">장바구니에 담기</button></td>
        </tr>
    </table>

</div>
<br>
</body>
</html>