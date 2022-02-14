<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>

	@font-face {

		font-family: 'NanumSquareB';
		src: url("fonts/NanumSquareB.ttf") format('truetype'); 

	}

	@font-face {

		font-family: 'NanumSquareEB';
		src: url("fonts/NanumSquareEB.ttf") format('truetype'); 

	}
    @font-face {

		font-family: 'NanumSquareRoundB';
		src: url("fonts/NanumSquareRoundB.ttf") format('truetype'); 

	}

    @font-face {

        font-family: 'NanumSquare_ac';
		src:url("fonts/NanumSquare_ac.ttf") format('truetype'); 

	}

    @font-face {

        font-family: 'KakaoBold';
		src:url("fonts/KakaoBold.ttf") format('truetype'); 

	}

    @font-face {

        font-family: 'KakaoRegular';
		src:url("fonts/KakaoRegular.ttf") format('truetype'); 

	}

    body{

        padding-top : 140px;
        margin:auto;
        font-size : 12px;

    }

    button:focus{border: none;outline:none;}

    .linktokakao:link{text-decoration: none;color:#3A1D1D;}

    .linktokakao:visited{text-decoration: none;color:#3A1D1D;}

    .linktokakao:active{text-decoration: none;color:#3A1D1D;}

    .linktokakao:hover{text-decoration: none;color:#3A1D1D;}

	.header{
        margin:auto;
        opacity: 85%;
        z-index : 1;
        position:fixed;
        width:100%;
		height : 130px;
        top:-5px;
		background-color:black;
        transition: all 0.9s;
	}
    .header:hover{
        height:170px;
        opacity: 95%;
        transition: all 0.5s;
    }
    .header:hover .blank{
        height:10px;
        transition: all 0.5s;
    }
    .header:hover .header_menu{
        font-size:25px;
        transition: all 0.5s;
    }
    .titlelogo{
        height:85px;
        transition: all 0.5s;
    }
    .header:hover .titlelogo{
        height:90px;
        transition: all 0.5s;
    }
    .logo_title{
        font-family:'NanumSquareRoundB';
        font-size:25px;
        color:white;
    }
    .logo_subtitle{
        font-family:'NanumSquare_ac';
        font-size:15px;
        color:white;
    }

    .header_menu:active{
        border:none;
    }
    .blank{
        height:0px;
        transition: all 0.9s;
    }
    .header_menu{
        background:none;
        color:whitesmoke;
        border:none;
        width:120px;
        height:40px;
        font-family: 'NanumSquare_ac';
		font-size:22px;
        margin-left:20px;
        margin-right:20px;
        transition: all 0.9s;
    }
    .header_menu:hover{
        width:140px;
        color:#FF9966;
        transition: all 0.8s;
    }
    .header_index{
        width:1200px;
    }
    .sidemenu{
        position:fixed;
        top:180px;
        right:-100px;
        z-index: 1;
        width:200px;
        height:100px;
        border:1px solid lightgray;
        background-color:#FDFDFD;
        transition: all 0.5s;
        display:flex;
        opacity:70%;
    }



    .sidemenu:hover{
        background-color:#F7E600;
        border:none;
        right:0%;
        opacity:100%;
        transition: all 0.5s;
    }

 

    .sidemenu_img{
        width:100px;
        height:100px;
    }
    .sidemenu span{
        margin-top:20px;
        font-family: 'KakaoBold';
        opacity:0;
        transition: all 0.5s;
    }

    .sidemenu:hover span{
	   opacity:100%;
	   transition: all 0.5s;
    }

	 .event{
	text-align:center;
	
	}

    

</style>

 

<!-- Header -->
<!------------------------------ ▼ 상단 공통 헤더 ▼ ------------------------------>
<div id="headers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {

$("#headers").load("Header.jsp");
});
</script>
<!------------------------------ ▲ 상단 공통 헤더 ▲ ------------------------------>
<!-- 로고 이미지 -->

    <!-- 메뉴바 -->

 	<a href="#"><button class="header_menu">견적</button></a> 

	<a href=categoryCon?product=cpu><button class="header_menu">카테고리</button></a> 

	<a href="#"><button class="header_menu">공지사항</button></a> 

	<a href="#"><button class="header_menu">이벤트</button></a>  

	<a href="#"><button class="header_menu">커뮤니티</button></a> 

	<a href="support.html"><button class="header_menu">고객센터</button></a>

     <!-- /메뉴바 -->

	</div>

</div> 


<a href="http://pf.kakao.com/_xhHADK" class="linktokakao">

<div class="sidemenu">

        <div class="sidemenu_img"><img src="images/SMHRD_kakao.png" width="100px" height="100px"></div>

        <span>

            <font size="4">

            스마트

            <br>

            본체개발원

            </font>

            <br><br>

            <font size="2">

            플러스친구

            </font>

        </span>


</div>
<div class="event">
<img src=event/event.jpg>



</div>

</a>