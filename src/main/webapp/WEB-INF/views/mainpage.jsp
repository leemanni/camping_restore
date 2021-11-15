<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>뭐해? 나와!</title>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="css/mainpage/mainpage.css">
<link rel="stylesheet" href="css/mainpage/topmenu.css">
<link rel="stylesheet" href="js/mainpage.mainpage.js">
<link rel="stylesheet" href="css/content/navbar.css">
<link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
</head>
<body>

<!-- ================================================================================================================================== -->
<!-- 내비게이션 바 -->
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" 
				aria-expanded="false">
				<span class="sr-only"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="mainpage">뭐해? 나와!</a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" 
						data-toggle="dropdown" 
						role="button" 
						aria-haspopup="true" 
						aria-expanded="false">
						캠핑장 소개<span class="caret"></span>
					</a>
		    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">		 
		              <li class="dropdown-submenu">
		                <a tabindex="-1" href="#">서울</a>
		                <ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="list?campNumber=1">서울북한산럭셔리카라반&수영장글램핑</a></li>
		                </ul>	                 
		              </li>
		              
		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">경기</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="list?campNumber=2">가평 달빛정원글랭핑&캠핑</a></li>
		                  <li><a tabindex="-1" href="list?campNumber=3">글램비 글램핑</a></li>
		                  <li><a tabindex="-1" href="list?campNumber=4">동화힐링캠프글램핑</a></li>
		                  <li><a tabindex="-1" href="list?campNumber=5">소풍 캠핑장</a></li>
		                  <li><a tabindex="-1" href="list?campNumber=6">왕산 오토캠핑장</a></li>
		                  <li><a tabindex="-1" href="list?campNumber=7">포천 프로미스 캠프</a></li>
		                  <li><a tabindex="-1" href="list?campNumber=8">하늘 숲 글램핑파크</a></li>
		                  <li><a tabindex="-1" href="#">호수산장관광농원</a></li> <!--자료 없음  -->
		                </ul>	
		              </li>
		              
		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">강원</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">동강 전망휴양림 오토캠핑장</a></li> <!--자료없음  -->
		                  <li><a tabindex="-1" href="list?campNumber=12">별마로 빌리지</a></li>
		                  <li><a tabindex="-1" href="list?campNumber=11">소금강 오토캠프장</a></li>
		                </ul>	
		              </li>
		              
		              <li><a tabindex="-1" href="#">충북</a></li>	

		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">충남</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">솔바람 캠핑장</a></li> <!-- 데이터 없음 -->
		                  <li><a tabindex="-1" href="list?campNumber=9">태안 캠핑코리아</a></li>
		                </ul>	
		              </li>
		              
		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">전북</a>	
		              	<ul class="dropdown-menu"> 
		                  <li><a tabindex="-1" href="#">변산반도국립공원 고사포 야영장</a></li>  <!-- 데이터 없음 -->
		                </ul>	
		              </li>	
		              
		              <li><a tabindex="-1" href="#">전남</a></li>		              		              		              

		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">경북</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="list?campNumber=10">스카이글램핑</a></li>
		                </ul>	
		              </li>		
		              
		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">경남</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">사천 비토 솔섬 오토캠핑장</a></li>  <!-- 데이터 없음 -->
		                </ul>	
		              </li>	
		              
		              <li><a tabindex="-1" href="#">제주</a></li>  <!-- 데이터 없음 -->			               	              
            		</ul>
				</li>
				
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" 
						data-toggle="dropdown" 
						role="button" 
						aria-haspopup="true" 
						aria-expanded="false">
						캠핑장 길찾기<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="path">캠핑장 길찾기</a></li>
					</ul>
				</li>
			</ul>

		
			<div class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						<c:if test="${manager==null}">
								로그인
							</c:if>
							<c:if test="${manager!=null}">
								관리자등록
							</c:if>
							<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
							<c:if test="${manager==null}">
								<li><a href="loginMain">로그인</a></li>
							</c:if>
							<c:if test="${manager!=null}">
								<li><a href="register">관리자등록</a></li>
								<li><a href="logout">로그아웃</a></li>
							</c:if>
					</ul>
					
				</li>
			</div>
			</div>
		</div>
</nav>
<!-- ================================================================================================================================== -->
<!-- 시작 -->
<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="./images/mainphotho.jpg" style="height :720px;"> 
            </div>

            <!-- End Item -->
            <div class="item">
            <iframe width="100%" height="720px" src="https://www.youtube.com/embed/FIreJ82UKHM" 
            title="YouTube video player" frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen></iframe>
            </div>
            <!-- End Item -->
            <div class="item">
            <iframe width="100%" height="720px" src="https://www.youtube.com/embed/ThybOea6rZ0" 
            title="YouTube video player" frameborder="0" 
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen></iframe>            
            </div>

             <!-- End Item -->
            <div class="item">
                <img src="./images/campingforest.jpg" style="height :720px;">
            </div>
        </div>
        <!-- End Carousel Inner -->
        <ul class="nav nav-pills nav-justified">
            <li class="slide" data-target="#myCarousel" data-slide-to="0" ><a href="#">뭐해? 나와!</a></li>
            <li class="slide" data-target="#myCarousel" data-slide-to="1"><a href="#">캠핑 노하우</a></li>
            <li class="slide" data-target="#myCarousel" data-slide-to="2"><a href="#">캠핑 필수템</a></li>
            <li class="slide" data-target="#myCarousel" data-slide-to="3"><a href="#">뭐해? 나와!</a></li>
        </ul>
    </div>
 </div>

    <!-- End Carousel -->
<!-- ================================================================================================================================== -->
<br/>
<div class="container">
	<div class="row">
		<div class='list-group gallery'>
			<c:forEach begin="1" end="12" step="1" var="i">
	            <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
	                <a class="thumbnail fancybox" rel="ligthbox" href="list?campNumber=${i}">
	                    <img class="img-responsive" alt="" src="images/camping_0_${i}.jpg" />
	                    <div class='text-right'>
	                        <small class='text-muted'>${cmapDataList.get(i-1)}</small> <!-- 백에서 전체 캠핑장 관련 데이터 가져오기 -->
	                    </div> <!-- text-right / end -->
	                </a>
	            </div> <!-- col-6 / end -->
			</c:forEach>
        </div> <!-- list-group / end -->
	</div> <!-- row / end -->
</div> <!-- container / end -->
<!-- ================================================================================================================================== -->
<br/>

	<footer style="background-color: #000000; color: #ffffff">
		<div class="container">
			<br/>
			<div class="row">
				<div class="col-sm-3" style="text-align: center;">
					<h5 class="dev_name"><br/></h5>
					<h5 class="dev_name">개발자: 김재호</h5>
					<h5 class="dev_name">개발자: 김호연</h5>
					<h5 class="dev_name">개발자: 신영진</h5>
					<h5 class="dev_name">개발자: 이원희</h5>
					<h5 class="dev_name">개발자: 전상욱</h5>
					<br>
				</div>
				
				<div class="col-sm-6">
					<h5 class="dev_name">개발자 문의처</h5>
					<h5 class="dev_name">E-mail: kjh9442@naver.com</h5>
					<h5 class="dev_name">E-mail: cjffydahs@naver.com</h5>
					<h5 class="dev_name">E-mail: dndkdkdz@naver.com </h5>
					<h5 class="dev_name">E-mail: hoyoun9051@naver.com</h5>
					<h5 class="dev_name">E-mail: sangwook0217@gmail.com</h5>
				</div>
				
				<div class="col-sm-3" style="text-align: center;">
					<h5 class="dev_name"><br/></h5>
					<h5 class="dev_name"><br/></h5>
					<h5 class="dev_name"><br/></h5>
					<h5 class="dev_name"><br/></h5>
					<h5 class="dev_name">입금 계좌: 카카오 뱅크 3333-12-4618614</h5>
				</div>
			</div>
		</div>
	</footer>
<!-- ================================================================================================================================== -->

</body>
</html>

















