<%@page import="com.model.AdminDTO"%>
<%@page import="com.model.MemberDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!DOCTYPE html>
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
        margin-left:5px;
        margin-right:5px;
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
    .sidemenu_kakao{
        position:fixed;
        top:180px;
        right:-100px;
        z-index: 1;
        width:200px;
        height:100px;
        border:none;
        background-color:#F7E600;
        transition: all 0.5s;
        display:flex;
        opacity:50%;
    }
    .sidemenu_kakao:hover{
        border:none;
        right:0%;
        opacity:100%;
        transition: all 0.5s;
    }
    .sidemenu_img{
        width:100px;
        height:100px;
    }
    .sidemenu_kakao span{
        margin-top:20px;
        font-family: 'KakaoBold';
        opacity:0;
        transition: all 0.5s;
    }
    .sidemenu_kakao:hover span{
	   opacity:100%;
	   transition: all 0.5s;
    }
    .sidemenu_support{
        position:fixed;
        top:280px;
        right:-100px;
        z-index: 1;
        width:200px;
        height:100px;
        border:none;
        background-color:#28A0FF;
        transition: all 0.5s;
        display:flex;
        opacity:50%;
    }

    .sidemenu_support:hover{
        border:none;
        right:0%;
        opacity:100%;
        transition: all 0.5s;
    }
    .sidemenu_support span{
        margin-top:20px;
        font-family: 'NanumSquareEB';
        color:white;
        opacity:0;
        transition: all 0.5s;
    }
    .sidemenu_support:hover span{
	   opacity:100%;
	   transition: all 0.5s;
    }
    .logininfo{
        position:fixed;
        right:0;
        top:0;
        color:white;
    }
</style>

 

<!-- Header -->

<div class="header" align = "center"> 

	

	<div class="header_index">
        <div class="blank"></div>
        <a href="index.jsp">
        <img src="images/smhrd_titlelogo.png" class="titlelogo">
        </a>
    <br>
    <div class="blank"></div>
<!-- 로고 이미지 -->

    <!-- 메뉴바 -->

 	<a href="index.jsp#estmenu"><button class="header_menu">견적</button></a> 

	<a href=categoryCon?product=cpu><button class="header_menu">카테고리</button></a> 

	<a href="#"><button class="header_menu">공지사항</button></a> 

	<a href="eventpager.jsp"><button class="header_menu">이벤트</button></a>  

	<a href="ListServiceCon"><button class="header_menu">커뮤니티</button></a> 

	<a href="support.html"><button class="header_menu">고객센터</button></a>

     <!-- /메뉴바 -->

        
        
        
             <% 
/*      check chk = new check();
      int abc = 0;

 		int open = 0;
     	int guest = 0;
     	AdminDTO adinfo = null;
     	MemberDTO info = null;
    System.out.println("하이");
    
    
   	if(chk.getCheck()== 1){
   		
  	if(open == 1){
  		
  		 adinfo=(AdminDTO)session.getAttribute("adinfo");
  		 
  	}
    if (open == 2 ){
    info=(MemberDTO)session.getAttribute("info");
    guest = (Integer)request.getAttribute("guest");}
   	} */
   	
   	
    MemberDTO info=(MemberDTO)session.getAttribute("info");
    AdminDTO adinfo=(AdminDTO)session.getAttribute("adinfo");
    
    //일반회원 로그인시
        if(info!=null && adinfo==null){
   		%>
          <a href="Logout"><button class="header_menu">로그아웃</button></a>
          <a href="User_View/Mypage.jsp"><button class="header_menu">마이페이지</button></a> 
   	<% 
   	//관리자 로그인시
   	}else if(info==null && adinfo!=null){
       %>
    	<a href="Logout"> 로그아웃</a>
   	<%}else if(info==null && adinfo==null){%>
        <a href="login.jsp"><button class="header_menu">로그인</button></a>	
   	<%}%>
    <div class="logininfo">
    <%if(info!=null && adinfo==null){%>
    <h3><%=info.getEmail() %>님 환영합니다</h3>
    <% }else if(info==null && adinfo!=null){%>
    <h3><%=info.getEmail() %>님 환영합니다</h3>
    <a href="Admin_View/Member.jsp"><button class="header_menu">회원정보 관리</button></a>
    <a href="Admin_View/AskList.jsp"><button class="header_menu">고객센터 관리</button></a>
    <a href="Admin_View/PrList.jsp"><button class="header_menu">상품재고 관리</button></a>	       
    <%}%>       	          
</div>
	</div>
</div> 



        
    
<% //일반회원 로그인시
   if(info!=null && adinfo==null){ %>
<a href="http://pf.kakao.com/_xhHADK" class="linktab">
<div class="sidemenu_kakao">
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
</a>
    
<div class="sidemenu_support" onclick="showPopup();">
        <div class="sidemenu_img"><img src="images/support.png" width="100px" height="100px"></div>
        <span>
            <font size="6">
            Q&A
            </font>
            <br>
            <font size="4">
            문의하기
            </font>
        </span>
</div>
<script language="javascript">
    function showPopup() { window.open("AskCenter.jsp", "a", "width=600, height=700, left=100, top=50"); }
</script>
<%} else if(info==null && adinfo==null) {%>
<a href="http://pf.kakao.com/_xhHADK" class="linktab">
<div class="sidemenu_kakao">
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
</a>    
<a href="login.jsp" class="linktab">
<div class="sidemenu_support">
        <div class="sidemenu_img"><img src="images/support.png" width="100px" height="100px"></div>
        <span>
            <font size="6">
            Q&A
            </font>
            <br>
            <font size="2">
            로그인 후<br>이용해주십시오.
            </font>
        </span>
</div>
</a>
<%}%>