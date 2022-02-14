<%@page import="com.controller.check"%>
<%@page import="com.model.AdminDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html>
<head>
<meta name="google-site-verification" content="QiATsLZyHAisERWIU5pkmzMYS4Fe75OqewkQb0PVioU" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<title>����Ʈ��ü���߿�</title>
<style>

	@font-face {
		font-family: 'NanumSquareB';
		src: url("fonts/NanumSquareB.ttf") format('truetype');
    }

    @font-face {
        font-family: 'NanumSquareRoundL';
		src:url("fonts/NanumSquareRoundL.ttf") format('truetype'); 
    }

    @font-face {
        font-family: 'NanumSquare_acL';
		src:url("fonts/NanumSquare_acL.ttf") format('truetype'); 
	}

    @font-face {
        font-family: 'NanumSquare_ac';
		src:url("fonts/NanumSquare_ac.ttf") format('truetype'); 
	}

    html{
        background-color : #030303;
        color:whitesmoke;
    }

    body{
        padding-top : 140px;
        margin:auto;
        font-size : 12px;
    }

    #section1{
        width: 100%;
    }
    #section2{
        width: 100%;
        background-color:ghostwhite;
        color:black;
        font-size:20px;
    }

    #section3{
        width: 100%;
        height: 700px;
        font-size:20px;
        font-family: 'NanumSquare_acL';
      }
    #footer{
        width: 100%;
	}

	.menu{
        margin:2%;
        width:1000px

    }

    .index{
        width:1000px;
    }

    .title{
        font-size:50px;
    }

    .article{
        font-size:20px;
    }

    #estimate1{
        background-image: url(images/��ȭ������.png);
        width:500px;
        height:500px;
        object-fit: fill;
        float:right;
    }

    #estimate2{
        background-image: url(images/Ŀ���Ұ���.png);
        width:500px;
        height:250px;
        object-fit: fill;
        float:left;
    }

    #estimate3{
        background-image: url(images/������õ.png);
        width:500px;
        height:250px;
        object-fit: fill;
        float:left;
    }

    img#nm{
        position: relative;
        left:150px;
        bottom:70px;   
    }

    .post-slider .post-wrapper{
        float:none;
        width:1000px;
        height:150px;
        margin:0px auto;
    }

    .post-slider .post-wrapper .post{
        width:330px;
        height:264px;
        display:inline-block;
    }

</style>
</head>
<body >


<!------------------------------ �� ��� ���� ��� �� ------------------------------>
<div id="headers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {
$("#headers").load("Header.jsp");
});
</script>
<!------------------------------ �� ��� ���� ��� �� ------------------------------>




 <!-- Section -->    
<div id ="section1" align = "center">
    <!-- Fotorama �����̵� �̹��� -->
    <div class="index">
	<div class="fotorama"data-autoplay="true" data-height="650px" data-ratio="600/341" align="center">
        <img src="images/ad/ad_1.jpg"/>
		<img src="images/ad/ad_2.jpg"/>
		<img src="images/ad/ad_3.jpg"/>
		<img src="images/ad/ad_4.jpg"/>
		<img src="images/ad/ad_5.jpg"/>
	</div>
    </div>
    <!-- Fotorama �����̵� �̹���-->

    <!-- Fotorama ��ũ��Ʈ -->
	<link  href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
    <!-- Fotorama ��ũ��Ʈ -->
</div>  
<!-- /Section -->

<div id="section2" align="center">
    <div class ="index" align="left">
    <h1>��������</h1><hr>
    <a>2021-02-08 �ڷγ� �˰��� ��ǻ�� ���̷���..</a><br>
    <a>2021-02-08 ä�¾� ����ü�� �߰�...</a><br>
    <a>2021-02-08 ����� ������ �ȿ°� ��ȭ?</a><br>
    <br><br><br>
    </div>
</div>
 
<div id="section3" align="center">
    <div class="index" align="left">
        <br>
        <div class="title" id="estmenu"> ����<div>
        <div class="article"><br> ���Ե��� PC������ ���� �����ý����Դϴ�.</div>
        <br>

        <a href="esti1.html"><div id="estimate1"></div></a>

        <a href="estimateObject?product=cpu&page=estimate"><div id="estimate2"></div></a>

        <div id="estimate3" align="center">

            <img id="nm" src="images/�׸�2.png">

        </div>   

    </div>  


        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

        <script type ="text/javascript">

             $('.post-wrapper').slick({

                 slidesToShow: 3,

                 slidesToScroll: 1,

                 autoplay: true,

                 autoplaySpeed: 2000,

                 nextArrow:$('.next'),

                 prevArrow:$('.prev'),

             });

        </script>

    </div>

</div>
 


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<!------------------------------ �� �ϴ� Footer �� ------------------------------>
<div id="footers"></div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
$(document).ready( function() {
$("#footers").load("Footer.html");
});
</script>
<!------------------------------ �� �ϴ� Footer �� ------------------------------>	
</body>
</html>