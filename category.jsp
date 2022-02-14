<%@page import="java.util.ArrayList"%>
<%@page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
        margin:auto;
        }

        a:link{ text-decoration:none;} 
        a:visited{ text-decoration:none;} 
        a:active{ text-decoration:none;} 
        a:hover{ text-decoration:none;} 

        

        @font-face {
		font-family: 'NanumSquareB';
		src: url("fonts/NanumSquareB.ttf") format('truetype'); 
        }

        .category_menu{
            margin-top:20px;
            width:1200px;
        }

        .img{
            width:180px;
            height:180px;
            transition: all 0.3s;
        }
        .img:hover > img{
            width: 190px;
            height: 190px;
            margin-bottom: 2px;
            transition: all 0.3s;
        }
        .img:hover > .nametag{
            color:orange;
            transition: all 0.3s;
        }

        .nametag{
            font-family: 'NanumSquareB';
            position:relative;
            bottom:36px;
            height:33px;
            background-color:#424242;
            color:white;
            font-size:18px;
            line-height:33px;
        }

        .nametag span{
            margin-top:50px;
        }
        .sortitems{
            margin-top:20px;
            width:1200px;
            background-color:black;
            color:white;
            border-bottom: 2px solid #999999;
            display: flex;
        }
        .selectbox-wrap{
            font-family: 'NanumSquare_ac';
            width:1200px;
            font-size:17px;
            height:80px;
            border-bottom: 1px solid #999999;
        }
        select{
            font-size:17px;
            width:auto;
            height:25px;
            text-align: center;
            text-align-last: center;
            border-radius:40px;
            transition: all 0.3s;
        }
        select:hover{
            font-size:18px;
            height:35px;
            transition: all 0.3s;
        }
        select:focus{
            outline:none;
            font-size:18px;
            height:35px;
            transition: all 0.3s;
        }
        .inputprice{
            text-align: right;
            width:70px;
            height:20px;
            border-radius:40px;
            border:1px solid black;
            transition: all 0.3s;
        }
        .inputprice:hover{
            width:80px;
            font-size:18px;
            height:30px;
            transition: all 0.3s;
        }
        .inputprice:focus{outline:none;}

        .submit{
            font-size:16px;
            width:120px;
            height:25px;
            border-radius:40px;
            background:none;
            border:1px solid black;
            transition: all 0.3s;
        }
        .submit:hover{
            font-size:16px;
            width:140px;
            height:40px;
            color:white;
            border-radius:60px;
            background-color:#FF4646;
            border:none;
            transition: all 0.3s;
        }
        .products{
            margin:auto;
            width:1200px;
            border-bottom: 1px solid #999999;
        }
        .products_id{
            font-family: 'NanumSquareB';
            font-size:18px;
            color:black;
        }
        .products_spec{
            font-size:11px;
            color:#999999;
        }
        .products_price{
            font-family: 'NanumSquareB';
            font-size:18px;
            color:black;
        }

        .btn{
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

        

        .products:hover{
            background:#F1F1F1;
            transition: all 0.3s;
        }
    </style>
    <title>Document</title>
</head>
<%
response.setCharacterEncoding("utf-8"); // 한글 처리
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=UTF-8"); 
ArrayList model = (ArrayList)request.getAttribute("model");
ArrayList price = (ArrayList)request.getAttribute("price");
ArrayList context = (ArrayList)request.getAttribute("context");
ArrayList cnt = (ArrayList)request.getAttribute("cnt");
Object product = request.getAttribute("product");
DecimalFormat df = new DecimalFormat("#,##0");
%>
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

<div class="section" align="center">
    
<!------------------------------ ▼ 카테고리 메뉴 ▼ ------------------------------>
    <!-- 여긴 자바 건드릴 부분은 딱히 없음 링크만 달아주고 진행 ㄱㄱ-->
    <div class=category_menu>
        <table >
            <tr>
                <td>
                    <a href=categoryCon?product=cpu> <!-- CPU 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_cpu.png"> 
                        <div class="nametag" align="center">CPU</div>
                    </div>
                    </a>
                </td>
                <td>
                    <a href=categoryCon?product=mother> <!-- 메인보드 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_mainboard.png"> 
                        <div class="nametag" align="center">메인보드</div>
                    </div>
                    </a>
                </td>
                <td>
                    <a href=categoryCon?product=memory> <!-- 메모리 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_ram.png"> 
                        <div class="nametag" align="center">메모리</div>
                    </div>
                    </a>
                </td>
                <td>
                    <a href=categoryCon?product=gpu> <!-- 그래픽카드 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_gpu.png"> 
                        <div class="nametag" align="center">그래픽카드</div>
                    </div>
                    </a>
                </td>
                <td>
                    <a href=categoryCon?product=power> <!-- PSU 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_psu.png"> 
                        <div class="nametag" align="center">파워</div>
                    </div>
                    </a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href=categoryCon?product=cooler> <!-- 쿨러 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_cooler.png"> 
                        <div class="nametag" align="center">쿨러</div>
                    </div>
                    </a>
                </td>
                <td>
                    <a href=categoryCon?product=case> <!-- 케이스 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_case.png"> 
                        <div class="nametag" align="center">케이스</div>
                    </div>
                    </a>
                </td>
                <td>
                    <a href=categoryCon?product=mouse> <!-- 마우스 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_mouse.png"> 
                        <div class="nametag" align="center">마우스</div>
                    </div>
                    </a>
                </td>
                <td>
                    <a href=categoryCon?product=keyboard> <!-- 키보드 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_keyboard.png"> 
                        <div class="nametag" align="center">키보드</div>
                    </div>
                    </a>
                </td>
                <td>
                    <a href=categoryCon?product=monitor> <!-- 모니터 카테고리로 이동하게 설정-->
                    <div class="img">
                        <img class="img" src="images/menu_monitor.png"> 
                        <div class="nametag" align="center">모니터</div>
                    </div>
                    </a>
                </td>
            </tr>
        </table>
    </div>
<!------------------------------ ▲ 카테고리 메뉴 ▲ ------------------------------>
    
<!------------------------------ ▼ 가격기준 필터 ▼ ------------------------------>
    <form action = "estimateObject">
    <div class="selectbox-wrap">
    <input type="hidden" id ="page" name="page" value="category">
        <br>
        <table width="1200px">
            <tr>
                <td align="left" width="150px">
                    <select>
                    <option value="null" selected="selected">정렬</option>
                    <option value="intel">가격 오름차순</option>
                    <option value="amd">가격 내림차순</option>
                    </select>
                </td>
                <td>
                    가격범위 
                    <input type="number" name="return"  min="0" step="1" class="inputprice"> 원 ~
                    <input type="number" name="return"  min="0" step="1" class="inputprice"> 원
                </td>
                <td align="right">

<!------------------------------ ▲ 가격기준 필터 ▲ 

<!------------------------------- ▼ CPU 필터 ▼ -------------------------------->    
    
    <%if (product.equals("cpu")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="core">
	<input type="hidden" id ="detail_3" name="detail_3" value="socket">
	<input type="hidden" id ="detail_4" name="detail_4" value="socket">
	<input type="hidden" id="detail_5" name="fifth" value="null">  
                  
				<select name="first">
                    <option value="null" selected="selected">CPU 제조사 선택</option>
				    <option value="intel">인텔</option>
                    <option value="amd">암드</option>
                </select>

                <select name="second">
					<option value="null" selected="selected">코어 수</option>
					<option value="8">8코어</option>
                    <option value="4">4코어</option>
                    <option value="16">16코어</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">Intel 소켓</option>
      				<option value="1151v2">1151</option>
                    <option value="1150">1150</option>
                    <option value="775">775</option>
                </select>

                <select name="fourth">
					<option value="null" selected="selected">AMD 소켓</option>
        			<option value="AM4">am4</option>
                    <option value="AM3">am3</option>
                    <option value="AM2">am2</option>
                </select>
                
      			<input type = "hidden" id="product" name="product" value="cpu">
        		<input type = "hidden" id="product" name="productObject" value="cpu_t">
    <%} %>

<!------------------------------- ▲ CPU 필터 ▲ --------------------------------> 

<!------------------------------- ▼ M/B 필터 ▼ -------------------------------->
    <%if (product.equals("mother")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="c_company">
	<input type="hidden" id ="detail_2" name="detail_2" value="company">
	<input type="hidden" id ="detail_3" name="detail_3" value="chipset">
	<input type="hidden" id ="detail_4" name="detail_4" value="socket">
	<input type="hidden" id ="detail_5" name="detail_5" value="form">
	

				<select name="first">
					<option value="null" selected="selected">칩셋 분류</option>
					<option value="Intel">인텔</option>
                    <option value="AMD">AMD</option>
                </select>

                <select name="second">
					<option value="null" selected="selected">제조사</option>
					<option value="GIGABYTE">기가바이트</option>
                    <option value="ASUS">ASUS</option>
                    <option value="MSI">MSI</option>
                    <option value="Asrock">Asrock</option>
                    <option value="BIOSTAR">BIOSTAR</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">세부 칩셋</option>
      				<option value="H310">(인텔)H310</option>
                    <option value="B360">(인텔)B360</option>
                    <option value="B365">(인텔)B365</option>
                    <option value="H110">(인텔)H110</option>
                    <option value="H410">(인텔)H410</option>
                    <option value="B460">(인텔)B460</option>
                    <option value="H470">(인텔)H470</option>
                    <option value="Z490">(인텔)Z490</option>
                    <option value="A320">(AMD)A320</option>
                    <option value="B450">(AMD)B450</option>
                    <option value="A520">(AMD)A520</option>
                    <option value="B550">(AMD)B550</option>
                    <option value="X570">(AMD)X570</option>
                </select>
	
                <select name="fourth">
					<option value="null" selected="selected">소켓</option>
        			<option value="1151v2">(인텔)1151v2</option>
                    <option value="1151">(인텔)1151</option>
                    <option value="1200">(인텔)1200</option>
                    <option value="3647">(인텔)3647</option>
                    <option value="AM4">(AMD)AM4</option>
                    <option value="TR4">(AMD)TR4</option>
                    <option value="sTRX4">(AMD)sTRX4</option>
                </select>
                
                <select name="fifth">
					<option value="null" selected="selected">폼팩터</option>
        			<option value="M-ATX">M-ATX</option>
                    <option value="ATX">ATX</option>
                    <option value="M-ITX">M-ITX</option>
                    <option value="E-ATX">E-ATX</option>
                </select>
               
               
      			<input type = "hidden" id="product" name="product" value="mother">
        		<input type = "hidden" id="product" name="productObject" value="mainboard_t">
    <%} %>
<!------------------------------- ▲ M/B 필터 ▲ -------------------------------->
        
<!------------------------------ ▼ 메모리 메뉴 ▼ ------------------------------->
    <%if (product.equals("memory")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="type">
	<input type="hidden" id ="detail_3" name="detail_3" value="mem">
	<input type="hidden" id ="detail_4" name="detail_4" value="clock">
	<input type="hidden" id="detail_5" name="fifth" value="null">
	 
				<select name="first">
					<option value="null" selected="selected">제조사</option>
					<option value="삼성전자">삼성전자</option>
                    <option value="마이크론">마이크론</option>
                    <option value="TeamGroup">TeamGroup</option>
                    <option value="타무즈">타무즈</option>
                    <option value="GeIL">GeIL</option>
                    <option value="GIGABYTE">기가바이트</option>
                    <option value="ADATA">ADATA</option>
                    <option value="HP">HP</option>
                </select>
        
                <select name="second">
					<option value="null" selected="selected">메모리 타입</option>
					<option value="DDR4">DDR4</option>
                    <option value="DDR3">DDR3</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">메모리 용량</option>
      				<option value="8GB">8GB</option>
                    <option value="16GB">16GB</option>
                    <option value="32GB">32GB</option>
                </select>

                <select name="fourth">
					<option value="null" selected="selected">메모리 클럭</option>
        			<option value="1600MHz">1600MHz</option>
                    <option value="2133MHz">2133MHz</option>
                    <option value="2666MHz">2666MHz</option>
                    <option value="2933MHz">2933MHz</option>
                    <option value="3200MHz">3200MHz</option>
                    <option value="3600MHz">3600MHz</option>
                </select>
                <input type = "hidden" id="detail_5" name="fifth" value="null">
      			<input type = "hidden" id="product" name="product" value="memory">
        		<input type = "hidden" id="product" name="productObject" value="memory_t">
    <%} %>
<!------------------------------ ▲ 메모리 메뉴 ▲ ------------------------------->
        
<!------------------------------- ▼ GPU 메뉴 ▼ -------------------------------->
        <%if (product.equals("gpu")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="chip_com">
	<input type="hidden" id ="detail_2" name="detail_2" value="company">
	<input type="hidden" id ="detail_3" name="detail_3" value="chipname">
	<input type="hidden" id ="detail_4" name="detail_4" value="mem">
	<input type="hidden" id="detail_5" name="fifth" value="null">
	
				<select name="first">
					<option value="null" selected="selected">칩셋 제조사</option>
					<option value="NVIDIA">NVIDIA</option>
                    <option value="AMD">AMD</option>
                </select>
  
                <select name="second">
					<option value="null" selected="selected">그래픽카드 제조사</option>
					<option value="GIGABYTE">기가바이트</option>
                    <option value="ASUS">ASUS</option>
                    <option value="MSI">MSI</option>
                    <option value="이엠텍">이엠텍</option>
                    <option value="갤럭시">갤럭시</option>
                    <option value="ZOTAC">ZOTAC</option>
                    <option value="SAPPHIRE">사파이어</option>
                    <option value="COLORFUL">COLORFUL</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">칩셋 구분</option>
      				<option value="GTX1650">GTX1650</option>
                    <option value="GTX1660">GTX1660</option>
                    <option value="RTX2060">RTX2060</option>
                    <option value="RTX2070">RTX2070</option>
                    <option value="RTX2080">RTX2080</option>
                    <option value="RTX3060TI">RTX3060TI</option>
                    <option value="RTX3080">RTX3080</option>
                    <option value="RTX3090">RTX3090</option>
                    <option value="RX5500">RX5500</option>
                    <option value="RX5600">RX5600</option>
                    <option value="RX5700">RX5700</option>
                    <option value="RX6800">RX6800</option>
                    <option value="RX6900">RX6900</option>
                </select>
	
                <select name="fourth">
					<option value="null" selected="selected">메모리 용량</option>
                    <option value="4GB">4GB</option>
                    <option value="6GB">6GB</option>
                    <option value="8GB">8GB</option>
                    <option value="10GB">10GB</option>
                    <option value="11GB">11GB</option>
                    <option value="16GB">16GB</option>
                    <option value="24GB">24GB</option>
                </select>
                <input type = "hidden" id="detail_5" name="fifth" value="null">
      			<input type = "hidden" id="product" name="product" value="gpu">
        		<input type = "hidden" id="product" name="productObject" value="gpu_t">
    <%} %>
<!------------------------------- ▲ GPU 메뉴 ▲ -------------------------------->

<!------------------------------- ▼ PSU 메뉴 ▼ -------------------------------->
        <%if (product.equals("power")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="form">
	<input type="hidden" id ="detail_3" name="detail_3" value="output">
	<input type="hidden" id ="detail_4" name="detail_4" value="authen">
	<input type="hidden" id="detail_5" name="fifth" value="null">
	
				<select name="first">
					<option value="null" selected="selected">제조사</option>
					<option value="ABKO">ABKO</option>
                    <option value="Antec">Antec</option>
                    <option value="CORSAIR">CORSAIR</option>
                    <option value="EVGA">EVGA</option>
                    <option value="FSP">FSP</option>
                    <option value="SuperFlower">SuperFlower</option>
                    <option value="마이크로닉스">마이크로닉스</option>
                    <option value="시소닉">시소닉</option>
                    <option value="에너맥스">에너맥스</option>
                    <option value="잘만">잘만</option>
                    <option value="쿨러마스터">쿨러마스터</option>
                </select>
  
                <select name="second">
					<option value="null" selected="selected">폼팩터</option>
					<option value="ATX">ATX</option>
                    <option value="M-ATX">M-ATX</option>
                    <option value="TFX">TFX</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">정격 출력</option>
      				<option value="500W">500W</option>
                    <option value="600W">600W</option>
                    <option value="650W">650W</option>
                    <option value="700W">700W</option>
                    <option value="750W">750W</option>
                    <option value="850W">850W</option>
                    <option value="1000W">1000W</option>
                    <option value="1050W">1050W</option>
                    <option value="1200W">1200W</option>
                    <option value="1300W">1300W</option>
                </select>
	
                <select name="fourth">
					<option value="null" selected="selected">80+인증</option>
        			<option value="80+Standard">80+ Standard</option>
                    <option value="80+Bronze">80+ Bronze</option>
                    <option value="80+Silver">80+ Silver</option>
                    <option value="80+Gold">80+ Gold</option>
                    <option value="80+Platinum">80+ Platinum</option>
                    <option value="80+Titaninum">80+ Titanium</option>
                </select>
               
      			<input type = "hidden" id="product" name="product" value="power">
        		<input type = "hidden" id="product" name="productObject" value="power_t">
    <%} %>
<!------------------------------- ▲ PSU 메뉴 ▲ -------------------------------->
        
<!----------------------------- ▼ Storage 메뉴 ▼ ------------------------------>
        <%if (product.equals("device")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="form">
	<input type="hidden" id ="detail_3" name="detail_3" value="interface">
	<input type="hidden" id ="detail_4" name="detail_4" value="mem">
	<input type="hidden" id ="detail_4" name="detail_5" value="type">
	
				<select name="first">
					<option value="null" selected="selected">제조사 선택</option>
					<option value="Seagate">Seagate</option>
                    <option value="Wastern Deigital">WD</option>
                    <option value="Toshiba">Toshiba</option>
                    <option value="삼성전자">삼성전자</option>
                    <option value="마이크론">마이크론</option>
                    <option value="ADATA">ADATA</option>
                    <option value="타무즈">타무즈</option>
                    <option value="SK 하이닉스">SK 하이닉스</option>
                </select>
  
                <select name="second">
					<option value="null" selected="selected">폼팩터 선택</option>
					<option value="3.5인치">3.5인치</option>
                    <option value="2.5형">2.5형</option>
                    <option value="M.2(2280)">M.2(2280)</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">인터페이스</option>
      				<option value="SATA3">SATA3</option>
                    <option value="PCIe3.0x4">PCIe3.0x4</option>
                    <option value="PCIe4.0x4">PCIe4.0x4</option>
                </select>
	
                <select name="fourth">
					<option value="null" selected="selected">용량</option>
        			<option value="480GB">480GB</option>
                    <option value="500GB">500GB</option>
                    <option value="512GB">512GB</option>
                    <option value="1TB">1TB</option>
                    <option value="2TB">2TB</option>
                    <option value="3TB">3TB</option>
                    <option value="4TB">4TB</option>
                    <option value="8TB">8TB</option>
                    <option value="10TB">10TB</option>
                </select>
                
                <select name="fourth">
					<option value="null" selected="selected">메모리 타입</option>
        			<option value="CMR">CMR</option>
                    <option value="PMR">PMR</option>
                    <option value="SMR">SMR</option>
                    <option value="MTC">MTC</option>
                    <option value="MLC">MLC</option>
                    <option value="TLC">TLC</option>
                </select>
               
      			<input type = "hidden" id="product" name="product" value="device">
        		<input type = "hidden" id="product" name="productObject" value="device_t">
    <%} %>
<!----------------------------- ▲ Storage 메뉴 ▲ ------------------------------>
        
<!------------------------------- ▼ 쿨러 메뉴 ▼ -------------------------------->
        <%if (product.equals("cooler")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="ice">
	<input type="hidden" id ="detail_3" name="detail_3" value="fan_size">
	<input type="hidden" id ="detail_4" name="detail_4" value="tdp">
	<input type="hidden" id="detail_5" name="fifth" value="null">
	
				<select name="first">
					<option value="null" selected="selected">제조사 선택</option>
					<option value="ABKO">ABKO</option>
                    <option value="ALSYE">ALSYE</option>
                    <option value="darkFlash">DarkFlash</option>
                    <option value="DEEPCOOL">DEEPCOOL</option>
                    <option value="3RSYS">3RSYS</option>
                    <option value="NZXT">NZXT</option>
                    <option value="JONSBO">JONSBO</option>
                    <option value="마이크로닉스">마이크로닉스</option>
                    <option value="에너맥스">에너맥스</option>
                    <option value="얼티메이크">얼티메이크</option>
                    <option value="잘만">잘만</option>
                    <option value="쿨러마스터">쿨러마스터</option>
                </select>
  
                <select name="second">
					<option value="null" selected="selected">냉각 방식</option>
					<option value="공랭">공랭</option><option value="수랭">수랭</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">팬 크기</option>
      				<option value="92mm">92mm</option><option value="120mm">120mm</option><option value="140mm">140mm</option>
                </select>
	
                <select name="fourth">
					<option value="null" selected="selected">용량</option>
        			<option value="130W">130W</option>
                    <option value="150W">150W</option>
                    <option value="180W">180W</option>
                    <option value="195W">195W</option>
                    <option value="200W">200W</option>
                    <option value="230W">230W</option>
                    <option value="280W">280W</option>
                    <option value="360W">360W</option>
                </select>
                
      			<input type = "hidden" id="product" name="product" value="cooler">
        		<input type = "hidden" id="product" name="productObject" value="cooler_t">
    <%} %>
<!------------------------------- ▲ 쿨러 메뉴 ▲ -------------------------------->
        
<!------------------------------ ▼ 케이스 메뉴 ▼ ------------------------------->
        <%if (product.equals("case")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="sized">
	<input type="hidden" id ="detail_3" name="detail_3" value="max">
	<input type="hidden" id ="detail_4" name="fourth" value="null">
    <input type="hidden" id="detail_5" name="fifth" value="null">
	  
				<select name="first">
					<option value="null" selected="selected">제조사 선택</option>
					<option value="3RSYS">3RSYS</option>
                    <option value="ABKO">ABKO</option>
                    <option value="BRAVOTEC">BRAVOTEC</option>
                    <option value="CORSAIR">CORSAIR</option>
                    <option value="DAVEN">DAVEN</option>
                    <option value="MSI">MSI</option>
                    <option value="NZXT">NZXT</option>
                    <option value="OPBIS">OPBIS</option>
                    <option value="리안리">리안리</option>
                    <option value="마이크로닉스">마이크로닉스</option>
                    <option value="써멀테이크">써멀테이크</option>
                    <option value="아이구주">아이구주</option>
                    <option value="잘만">잘만</option>
                </select>
  
                <select name="second">
					<option value="null" selected="selected">케이스 크기</option>
					<option value="미니타워">미니타워</option>
                    <option value="미들타워">미들타워</option>
                    <option value="빅타워">빅타워</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">폼팩터</option>
      				<option value="M-ITX">M-ITX</option>
                    <option value="M-ATX">M-ATX</option>
                    <option value="ATX">ATX</option>
                    <option value="E-ATX">E-ATX</option>
                </select>
	

      			<input type = "hidden" id="product" name="product" value="case">
        		<input type = "hidden" id="product" name="productObject" value="case_t">
    <%} %>
<!------------------------------ ▼ 케이스 메뉴 ▼ ------------------------------->

<!------------------------------ ▼ 키보드 메뉴 ▼ ------------------------------->
        <%if (product.equals("keyboard")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="conn">
	<input type="hidden" id ="detail_3" name="detail_3" value="select_s">
	<input type="hidden" id ="detail_4" name="detail_4" value="switch">
	<input type="hidden" id ="detail_5" name="detail_5" value="array">
	
				<select name="first">
					<option value="null" selected="selected">제조사 선택</option>
					<option value="ABKO">ABKO</option>
                    <option value="CHERRY">CHERRY</option>
                    <option value="COX">COX</option>
                    <option value="VARMILO">VARMILO</option>
                    <option value="로지텍">로지텍</option>
                    <option value="마이크로닉스">마이크로닉스</option>
                    <option value="한성컴퓨터">한성컴퓨터</option>
                </select>
  
                <select name="second">
					<option value="null" selected="selected">연결 방식</option>
					 <option value="유선">유선</option>
                    <option value="무선">무선</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">접점 방식</option>
      				<option value="멤브레인">멤브레인</option>
                    <option value="펜타그래프">펜타그래프</option>
                    <option value="무접점(광축)">무접점(광축)</option>
                    <option value="기계식">기계식</option>
                </select>
	
                <select name="fourth">
					<option value="null" selected="selected">스위치</option>
        			<option value="청축">청축</option>
                    <option value="적축">적축</option>
                    <option value="저소음 적축">저소음 적축</option>
                    <option value="갈축">갈축</option>
                    <option value="황축">황축</option>
                </select>
                
                <select name="fifth">
					<option value="null" selected="selected">키 배열</option>
        			<option value="87키">87키</option>
                    <option value="104키">104키</option>
                    <option value="108키">108키</option>
                    <option value="109키">109키</option>
                </select>
                
                
      			<input type = "hidden" id="product" name="product" value="keyboard">
        		<input type = "hidden" id="product" name="productObject" value="keyboard_t">
    <%} %>
<!------------------------------ ▲ 키보드 메뉴 ▲ ------------------------------->
        
<!------------------------------ ▼ 마우스 메뉴 ▼ ------------------------------->
        <%if (product.equals("mouse")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="conn">
	<input type="hidden" id ="detail_3" name="detail_3" value="feel">
	<input type="hidden" id="detail_4" name="fourth" value="null">
	<input type="hidden" id="detail_5" name="fifth" value="null">
	
				<select name="first">
					<option value="null" selected="selected">제조사 선택</option>
					<option value="ABKO">ABKO</option>
                    <option value="COX">COX</option>
                    <option value="MAXTILL">MAXTILL</option>
                    <option value="로지텍">로지텍</option>
                </select>
  
                <select name="second">
					<option value="null" selected="selected">연결 방식</option>
					<option value="유선">유선</option>
                    <option value="무선">무선</option>
                    <option value="무선+유선">무선+유선</option>
                    <option value="무선+블루투스">무선+블루투스</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">감도</option>
      				<option value="4000">4000 DPI</option>
                    <option value="5600">5600 DPI</option>
                    <option value="8000">8000 DPI</option>
                    <option value="12000">12000 DPI</option>
                    <option value="16000">16000 DPI</option>
                    <option value="25600">25600 DPI</option>
                </select>

      			<input type = "hidden" id="product" name="product" value="mouse">
        		<input type = "hidden" id="product" name="productObject" value="mouse_t">
    <%} %>
<!------------------------------ ▲ 마우스 메뉴 ▲ ------------------------------->

<!------------------------------ ▼ 모니터 메뉴 ▼ ------------------------------->
    <%if (product.equals("monitor")){ %>
	<input type="hidden" id ="detail_1" name="detail_1" value="company">
	<input type="hidden" id ="detail_2" name="detail_2" value="inchi">
	<input type="hidden" id ="detail_3" name="detail_3" value="hae">
	<input type="hidden" id ="detail_4" name="detail_4" value="rate">
	<input type="hidden" id ="detail_5" name="detail_5" value="hz">
	

				<select name="first">
					<option value="null" selected="selected">제조사 선택</option>
					<option value="삼성전자">삼성전자</option>
                    <option value="LG전자">LG전자</option>
                    <option value="알파스캔">알파스캔</option>
                    <option value="한성컴퓨터">한성컴퓨터</option>
                </select>
  
                <select name="second">
					<option value="null" selected="selected">화면 크기</option>
					<option value="24">24인치</option>
                    <option value="27">27인치</option>
                    <option value="32">32인치</option>
                    <option value="49">49인치</option>
                </select>

                <select name="third">
  					<option value="null" selected="selected">해상도</option>
      				<option value="FHD">FHD</option>
                    <option value="QHD">QHD</option>
                    <option value="DQHD">DQHD</option>
                    <option value="4K UHD">4K UHD</option>
                </select>
	
                <select name="fourth">
					<option value="null" selected="selected">화면 비율</option>
        			<option value="와이드16:9">와이드16:9</option>
                    <option value="울트라 와이드(32:9)">울트라 와이드(32:9)</option>
                </select>

                <select name="fifth">
					<option value="null" selected="selected">주사율</option>
        			<option value="60Hz">60Hz</option>
                    <option value="75Hz">75Hz</option>
                    <option value="144Hz">144Hz</option>
                    <option value="240Hz">240Hz</option>
                </select>
                
      			<input type = "hidden" id="product" name="product" value="monitor">
        		<input type = "hidden" id="product" name="productObject" value="monitor_t">
    <%} %>
<!------------------------------ ▲ 모니터 메뉴 ▲ -------------------------------> 
        
<!------------------------------- ▼ 검색 버튼 ▼ ------------------------------->       
                <td width="150px" align="center">
                <input type="submit" value=" 검색 " class="submit">
                </td>
        </tr>
        </table>    
        </div>
            </div>
        </form> 
<!------------------------------- ▲ 검색 버튼 ▲ ------------------------------->
            
            
<!------------------------------ ▼ 상품 목록 칸 ▼ ------------------------------>
	<%for(int i=0; i<model.size(); i++){ %>

    <div class="products">
    <table width="1200px" >
    <tr><%String temp = (String)model.get(i);
    	String changed = temp.replace("/", "_"); %>
        <td width="120px" height="120px" class="products_img" onClick="location.href='productSearchCon?productname=<%=model.get(i)%>&productid=<%=product%>'">
            <img src="Product\<%=product%>\<%=changed%>.jpg" width="120px">
        </td>
        <td align="left" width="500px" onClick="location.href='productSearchCon?productname=<%=model.get(i)%>&productid=<%=product%>'">
            <span class="products_id"><%=model.get(i) %></span><br>
            <span class="products_spec"><%=context.get(i) %>
            </span>
        </td>
        <td align="right" class="products_price" rowspan="2" width="350px" onClick="location.href='productSearchCon?productname=<%=model.get(i)%>&productid=<%=product%>'">
	      <%if((Integer)cnt.get(i)>0){%><%=df.format(price.get(i))%>원<%} else{%>
	       품절<%} %>
        </td>
        <td width="30px"></td>
        <td align="center" class="products_btn" rowspan="2">
            <div class="btngroup">
                <button class="btn" name="gift" id="button">관심상품</button><br>
                <button class="btn" name="basket" id="button">장바구니</button><br>
                <button class="btn" name="buy" id="button">바로구매</button>
            </div>
        </td>
    </table> 
    </div><%} %>
<!------------------------------ ▲ 상품 목록 칸 ▲ ------------------------------>


    
    
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
        
<!------------------------------ ▼ 하단 Footer ▼ ------------------------------>
<div id="footers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {
$("#footers").load("Footer.html");
});
</script>
<!------------------------------ ▲ 하단 Footer ▲ ------------------------------>
    

</body>
</html>