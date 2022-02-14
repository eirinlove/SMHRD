<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.BoardDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyccess/nanumgothic.css);
	html, body{
	width:100%;
	height:100%;
	}
    @font-face {

		font-family: 'NanumSquare_acL';
		src: url("fonts/NanumSquare_acL.ttf") format('truetype'); 
	} body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,talbe,th,td,form,fieldset,legend,input,textarea,button,select{
	margin:0;
	padding:0
	}
	body,input,textarea,select,button,talbe{
	font-family:'돋움',Dotum,AppleGothic,sans-serif;
	font-size:12px;
	}
	img,fieldset{
	border:0;
	}
	ul,ol{
	list-style:none;
	}
	em,address{
	font-style:normal;
	}
	a{
	text-decoration:none;
	}
	a:hover,a:active,a:focus{
	text-decoration:underline;
	}
	.wrap{
	width:600px;
	margin: 0 auto;
	font-family: 'NanumSquare_acL';
	}
	.wrap h1 {
		padding: 10px 0 4px;
		border-bottom: 1px solid #aaa;
		}
	.fixed_img_col ul{
	border-bottom: 1px solid #aaa;
	*zoom: 1;
	}
	.fixed_img_col li{
	float: left;
	width: 120px;
	height: 180px;
	padding: 20px 15px;
	margin-bottom: -1px;
	border-bottom: -1px solid #aaa;
	}	
	.fixed_img_col li a{
		display: block;
		}
	.fixed_img_col li a .thumb{
		position: relative;
		display: block;
		background-color: #ccc;
		height: 120px;
		color: #666;
		text-align:centr;
		line-height: 120px;
		}	
	.fixed_img_col li a .thumb em {
		display: none;
		position: absolute;
		left: 0;
		top: 0;
		width: 100%;
		height: 100%;
		background-color: rgba(0,0,0,.5);
		color: #eee;
		font-weight: bold;
		text-align: center;
		line-height: 120px;
		}
		.fixed_img_col li a:hover .thumb em{
		display: block;
		}
		.fixed_img_col li a strong{
		display: block;
		padding: 8px 0 4px;
		color: #333;
		font-weight: bold;
		line-height: 1.4;
		}
		.fixed_img_col li a:hover{
		text-decoration: none;
		}
		.fixed_img_col li p {
		color: #767676;
		font-size: .9em;
		}
    .wrap select{
        border-radius:50px;
        height:28px;
        background:none;
        border:1px solid black;
    }
    .wrap input{
        border-radius:80px;
        height:25px;
        background:none;
        border:1px solid black;
    }
    #bttn, button{
        width:50px;
        height: 28px;
        border-radius:80px;
        background:none;
        border:1px solid black;
    }
    .immg:hover{
        width:130px;
        height:130px;
        transition: all 0.8s;
    }
    .immg{
        width:120px;
        height:120px;
        transition: all 0.8s;
    }
.page{
	clear:both; 
	width:600px; 
	text-align:center;
	padding-top:10px;

	}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<div class="wrap">
<h1>갤러리 게시판</h1>
<div class="fixed_img_col">
<!-- ************ 리스트 출력 부분 ************************************************************ -->      
<c:forEach var="n" items="${list}">
<ul>
<li>
<a href="DetailServiceCon?comid=${n.comid}">
	<span class="thumb">
		<img src= "${n.filerealname}" class="immg"  alt="">
		<em>견적이미지</em>
	</span>
	<strong>${n.title}</strong>
</a>
<p>${n.comdate}</p>
</li>
</ul>
</c:forEach>
<!-- ************ 리스트 출력 부분 ************************************************************ -->      
	
	

<!-- *************************페이지 번호 구현************************************************************  -->
 		<!-- 1.페이징에 이용될 변수값들 -->  
 		<c:set var="page" value="${(param.p==null)?1:param.p}"/>
        <c:set var="startNum" value="${page-(page-1)%5}"/>
        <c:set var="lastNum" value="23"/>

<!-- 2.한 페이지 내에서 표현될 페이지번호 0~4  +i값을 해줌으로서 사실상 1~5 ************************************************************-->          	
	<div class="page">
	 <c:forEach var="i" begin="0" end="4">
	 	<c:if test="${(startNum+i)<=lastNum}">
	 		<a class="-text- ${(page==(startNum+i))?'orange':''} bold" href="?p=${startNum+i}&f=${param.f}&q=${param.q}">${startNum+i}</a>
		</c:if>
     </c:forEach>
<!-- ************ 이전 페이지 조건문 ************************************************************************ -->	
	<c:if test="${startNum>1}">
		<a class="btn btn-prev" href="?p=${startNum-1}&t=&q=">${startNum-1}</a>
	</c:if>	   
	<c:if test="${startNum<=1}">     
		<span class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</span>    
	</c:if>	 
	
<!-- ************ 다음 페이지 조건문 ************************************************************************ -->	   
	<c:if test="${startNum+5<lastNum}">
		<a href="?p=${startNum+5}&t=&q=" class="btn btn-next" >다음</a>       
	</c:if>	
	<c:if test="${startNum+5>=lastNum }">
	   <span class="btn btn-next" onclick="alert('다음 페이지가 없습니다.');">다음</span>          
     </c:if>
	</div>
	<br>
	
<!-- 3. 현재페이지 / 전체페이지   << 이런식으로 view 단에서 볼때 현재 페이지의 위치를 출력해주는 부분  ************************************************************-->                        
    <center><h3 class="hidden">현재 페이지</h3>
    <div><span class="text-orange text-strong">${(empty param.p)?1:param.p }</span> / ${lastNum} pages</div></center>	
	
	
	
	
	

<!--  ************************* 검색로직 ************************************************************ -->
      <form action="ListServiceCon" method="post"><center>
       <fieldset>
		<select class='menu' name="f">
        	 <option ${(param.f=="title")?"selected":""} value="title">제목</option>
       	 	 <option ${(param.f=="id")?"selected":""} value="id">작성자</option>
        </select>
        	<input type="text" name="q" placeholder="검색란을 입력하세요" value="${param.q }">
       		<input class="btn btn-search" type="submit" value="검색" id="bttn">
       		<a href="Write.jsp"><button type="button">글쓰기</button></a>	</center>
       </fieldset> 
       </form>
<!--  ************************* 검색로직 ************************************************************ -->       
         
<!-- 페이징끝 -->
</div>
</div>
</body>
</html>
