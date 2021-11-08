<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/mainpage/mainpage.css">
<link rel="stylesheet" href="css/mainpage/topmenu.css">  <!-- 지역별 토글 지정돼 있음 자우면 안됨 -->
<link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon">

<script type="text/javascript" src="js/mainpage.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<script type="text/javascript" src="./js/map.js"></script>
<style type="text/css">
	
	/* 지도 안의 마커와 캠핑장별 위치 관련 css */
	#map div{
		display: flex;
		align-items: center;
		justify-content: center;
		border-radius: 5%;
		font-size: 10px;
	}
	/* 지도에 표시될 마커 위 말풍선 텍스트 box 역할 */
	.mapinfo{
		padding:5px;
		padding-left:30px;
		font-size:13px;
	
	}
	/* 지도에 표시되는 캠핑장 글씨 관련 스타일 */
	.mapinfo a{
		color: black;
		text-decoration: none;
	}
</style>

<link rel="icon" href="./p1/favicon1.ico">
<title>캠핑장 길찾기</title>
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
			<a class="navbar-brand" href="mainpage">캠핑 리뷰 사이트(이름 미정)</a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" 
						data-toggle="dropdown" 
						role="button" 
						aria-haspopup="true" 
						aria-expanded="false">홈페이지 소개<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">홈페이지 소개</a></li>
					</ul>
				</li>
				
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
		                  <li><a tabindex="-1" href="#">서울북한산럭셔리카라반&수영장글램핑</a></li>
		                </ul>	                 
		              </li>
		              
		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">경기</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">가평 달빛정원글랭핑&캠핑</a></li>
		                  <li><a tabindex="-1" href="#">글램비 글램핑</a></li>
		                  <li><a tabindex="-1" href="#">동화힐링캠프글램핑</a></li>
		                  <li><a tabindex="-1" href="#">소풍 캠핑장</a></li>
		                  <li><a tabindex="-1" href="#">왕산 오토캠핑장</a></li>
		                  <li><a tabindex="-1" href="#">포천 프로미스 캠프</a></li>
		                  <li><a tabindex="-1" href="#">하늘 숲 글램핑파크</a></li>
		                  <li><a tabindex="-1" href="#">호수산장관광농원</a></li>
		                </ul>	
		              </li>
		              
		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">강원</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">동강 전망휴양림 오토캠핑장</a></li>
		                  <li><a tabindex="-1" href="#">별마로 빌리지</a></li>
		                  <li><a tabindex="-1" href="#">소금강 오토캠프장</a></li>
		                </ul>	
		              </li>
		              
		              <li><a tabindex="-1" href="#">충북</a></li>	

		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">충남</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">솔바람 캠핑장</a></li>
		                  <li><a tabindex="-1" href="#">태안 캠핑코리아</a></li>
		                </ul>	
		              </li>
		              
		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">전북</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">변산반도국립공원 고사포 야영장</a></li>
		                </ul>	
		              </li>	
		              
		              <li><a tabindex="-1" href="#">전남</a></li>		              		              		              

		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">경북</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">스카이글램핑</a></li>
		                </ul>	
		              </li>		
		              
		              <li class="dropdown-submenu">
		              	<a tabindex="-1" href="#">경남</a>	
		              	<ul class="dropdown-menu">
		                  <li><a tabindex="-1" href="#">사천 비토 솔섬 오토캠핑장</a></li>
		                </ul>	
		              </li>	
		              
		              <li><a tabindex="-1" href="#">제주</a></li>			              	              
            		</ul>
				</li>
				
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" 
						data-toggle="dropdown" 
						role="button" 
						aria-haspopup="true" 
						aria-expanded="false">
						캠핑장 리뷰 게시판<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="list">캠핑장 리뷰 게시판</a></li>
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

		<%-- 	<%
			 // 접속하기는 로그인이 되어있지 않은 경우만 나오게한다
				if(userID == null) {
			%> --%>
		
			<div class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						접속하기<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="loginMain">로그인</a></li>
						<li><a href="register">회원가입</a></li>
					</ul>
					
				</li>
			</div>
			<%-- 
				요부분은 나중에 관리자 모드할 때 써먹을 수 있을 거 같아서 냅둔 - 백엔트 : 이원희
			
			<%
			 // 로그인이 되어있는 사람만 볼수 있는 화면
				} else {
			%>
			<div class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						회원관리<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction">로그아웃</a></li>
					</ul>
					
				</li>
			</div>
			<%
				}
			%> --%>
			</div>
		</div>
	</nav>	
<!-- 지도 표시 부분 -->
<div id="map" style="width:70% ; height:700px; text-align: center; left:15%; right:15%;"></div>
	
<footer style="background-color: #000000; color: #ffffff">
	<div class="container">
	<br/>
		<div class="row">
			<div class="col-sm-2" style="text-align: center;">
				<h5>개발자</h5>
				<h5>전상욱</h5>
			</div>
			
			<div class="col-sm-4">
				<h5>E-mail</h5>
				<h5>전상욱 : sangwook0217@gmail.com</h5>
			</div>
			
			<div class="col-sm-4" style="text-align: center;">
				<h5>입금 계좌</h5>
				<h5>카카오 뱅크 3333-12-4618614</h5>
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
<!-- <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6c77ab0a5c207368771cf75c4d79f600"></script>
</body>
</html>

