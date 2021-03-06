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
<!------------------------------ ??? ?????? ?????? ?????? ??? ------------------------------>
<div id="headers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {

$("#headers").load("Header.jsp");
});
</script>
<!------------------------------ ??? ?????? ?????? ?????? ??? ------------------------------>
<%	session.setAttribute("pro_cpu",  "i5-10400");
	session.setAttribute("pro_cpu_price", "187850");
	session.setAttribute("pro_mother",  "ASRock B460M ?????? ?????????");
	session.setAttribute("pro_mother_price", "132000");
	session.setAttribute("pro_memory",  "TeamGroup T-Force DDR4-3200 CL16 Delta");
	session.setAttribute("pro_memory_price", "109800");
	session.setAttribute("pro_gpu",  "MSI ????????? GTX1660 SUPER ????????? OC D6 6GB");
	session.setAttribute("pro_gpu_price", "435000");
	session.setAttribute("pro_power",  "?????? MegaMax 600W 80PLUS STANDARD");
	session.setAttribute("pro_power_price", "46260");
	session.setAttribute("pro_device",  "???????????? 970 EVO M.2 NVMe");
	session.setAttribute("pro_device_price", "98940");
	session.setAttribute("pro_case",  "ABKO NCORE ?????? ??????LED ????????????");
	session.setAttribute("pro_case_price", "39500");
	session.setAttribute("pro_keyboard",  "ABKO HACKER K660 BLACK");
	session.setAttribute("pro_keyboard_price", "45900");
	session.setAttribute("pro_mouse",  "????????? G304 LIGHTSPEED WIRELESS BLACK");
	session.setAttribute("pro_mouse_price", "58450");
	session.setAttribute("pro_monitor",  "??????????????? ULTRON 3278 QHD NEW");
	session.setAttribute("pro_monitor_price", "239000");%>
<br><br><br><br>
<div class="section" align="center">
    <span class="est_title">?????? ??????</span><br><br><br>
    <table class="est_list">
        <tr>
            <td class="est_sort" height="60px">CPU</td><td class="est_index" id="index1">i5-10400 | 187,850???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">????????????</td><td class="est_index">ASRock B460M ?????? ????????? | 132,000???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">?????????</td><td class="est_index">TeamGroup T-Force DDR4-3200 CL16 Delta | 109,800???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">???????????????</td><td class="est_index">MSI ????????? GTX1660 SUPER ????????? OC D6 6GB | 435,000???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">??????????????????</td><td class="est_index">?????? MegaMax 600W 80PLUS STANDARD | 46,260???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">HDD/SSD</td><td class="est_index">???????????? 970 EVO M.2 NVMe | 98,940???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">?????????</td><td class="est_index">ABKO NCORE ?????? ??????LED ???????????? | 39,500???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">?????????</td><td class="est_index">ABKO HACKER K660 BLACK | 45,900???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">?????????</td><td class="est_index">????????? G304 LIGHTSPEED WIRELESS BLACK | 58,450???</td>
        </tr>
        <tr>
            <td class="est_sort" height="60px">?????????</td><td class="est_index">??????????????? ULTRON 3278 QHD NEW | 239,000???</td>
        </tr>
        <tr>
            <td align="left">?????? : 1,392,700 ???</td>
            <td align="right"><a href="estimateObject?product=cpu&page=estimate"><button class="estibtn">??? ???????????????</button></a>&nbsp;
            <button class="estibtn">??????????????? ??????</button></td>
        </tr>
    </table>

</div>
<br>
</body>
</html>