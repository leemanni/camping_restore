<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/mainpage/mainpage.css">
<link rel="stylesheet" href="css/mainpage/topmenu.css">  <!-- 지역별 토글 지정돼 있음 자우면 안됨 -->
<link rel="stylesheet" type="text/css" href="css/list/style.css" />
<link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="js/mainpage.mainpage.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6c77ab0a5c207368771cf75c4d79f600"></script>






<title>캠핑장</title>
</head>
<body>
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
			<a class="navbar-brand" href="mainpage">캠핑 리뷰 사이트(이름 미정)</a>
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
	<!--시작-->
	<section id="section1" style="right: 0px">
		<div id="cont_inner">
			<div class="sub_layout layout">
				<article>
					<header class="camp_top_info">
						<div class="camp_info_box">
							<div class="img_b">
								<img src="./images/camping_0_0.png" />
							</div>

							<div class="cont_tb">
								<table class="table">
									<colgroup>
										<col style="width: 30%;" />
										<col style="width: 70%;" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="col">이름</th>
											<!-- <td>가평 달빛정원글랭핑 캠핑</td> -->
											<td>${campDataVO.name}</td>
										</tr>
										<tr>
											<th scope="col">주소</th>
											<td>${campDataVO.address}</td>
										</tr>
										<tr>
											<th scope="col">위도</th>
											<td>${campDataVO.latitude}</td>
										</tr>
										<tr>
											<th scope="col">경도</th>
											<td>${campDataVO.longitude}</td>
										</tr>
										<tr>
											<th scope="col">입실 시간</th>
											<td>${campDataVO.inTime}</td>
										</tr>
										<tr>
											<th scope="col">퇴실 시간</th>
											<td>${campDataVO.outTime}</td>
										</tr>
										<tr>
											<th scope="col">홈페이지</th>
											<td><a href="${campDataVO.url}">홈페이지 바로가기</a>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</header>
				</article>
			</div>
			<!-- 끝 -->
		
			
			<!--시작-->
			<div id="contents">
				<div class="camp_cont_w">
					<div class="line_100">
						<span class="skip"></span>
					</div>
					<div class="layout">
						
						<ul class="camp_tab05">
							<li class="on"><a href="#" class="camp_intro">캠핑장 소개</a></li>
							<li id="c_guide"><a href="#" class="camp_guide">이용안내</a></li>
							<li id="c_map"><a href="list3?campNumber=${campNumber}" class="camp_map">위치/주변정보</a></li>
							<li id="c_review"><a href="list2?campNumber=${campNumber}" class="camp_review">캠핑 여행후기</a></li>
							<li id="c_notice"><a href="#" class="camp_notice">공지/이벤트</a></li>
						</ul>
	
						
					</div>
				</div>
			</div>
			<div id="container">
				<div class="row">
					<div class="col-sm-12">
						<img alt="이용수칙" src="images/event.jpg" style="width: 50%; margin-left: 25%;">
					</div>
				</div>
			</div>
			
		</div>
	</section>
	
	<footer style="background-color: #000000; color: #ffffff">
		<div class="container">
			<br/>
			<div class="row">
				<div class="col-sm-2" style="text-align: center;">
					<h5>개발자: 전상욱</h5>
				</div>
				
				<div class="col-sm-4">
					<h5>E-mail: sangwook0217@gmail.com</h5>
				</div>
				
				<div class="col-sm-4" style="text-align: center;">
					<h5>입금 계좌: 카카오 뱅크 3333-12-4618614</h5>
				</div>
				<div class="col-sm-2" style="text-align: center;">
					<h5>스우파 공식 SNS</h5>
					<div class="list-group">
						<a href="https://program.genie.co.kr/swf/main" class="list-group-item">공식 홈페이지</a>
						<a href="https://www.instagram.com/mnet_dance/" class="list-group-item">공식 인스타그램</a>
						<a href="https://program.naver.com/p/18923570" class="list-group-item">공식 네이버TV</a>
					</div>
				</div>
			</div>
		</div>
	</footer>

<script src="https://kit.fontawesome.com/27afa53023.js" crossorigin="anonymous"></script>
</body>
</html>