<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/mainpage/bootstrap.css">
<link rel="stylesheet" href="css/mainpage/mainpage.css">
<link rel="stylesheet" href="js/mainpage.mainpage.js">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<link rel="icon" href="./p1/favicon1.ico">
<title>캠핑장 길찾기</title>
</head>
<body>
<!-- ================================================================================================================================== -->
<!-- 내비게이션 바 -->
<% 
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
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
			<a class="navbar-brand" href="index.jsp">캠핑 리뷰 사이트(이름 미정)</a>
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
					<ul class="dropdown-menu">
						<li><a href="#">서울</a></li>
						<li><a href="#">경기</a></li>
						<li><a href="#">강원</a></li>
						<li><a href="#">충북</a></li>
						<li><a href="#">충남</a></li>
						<li><a href="#">전북</a></li>
						<li><a href="#">전남</a></li>
						<li><a href="#">경상</a></li>
						<li><a href="#">경남</a></li>
						<li><a href="#">제주</a></li>
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
						<li><a href="#">캠핑장 길찾기</a></li>
					</ul>
				</li>
			</ul>

<div id="map" style="width:70% ; height:700px; text-align: center; left:15%; right:15%;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6c77ab0a5c207368771cf75c4d79f600"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		    mapOption = { 
		        center: new kakao.maps.LatLng(36.80, 127.51), // 지도의 중심좌표
		        level: 12 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		var endadd = "";
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		var positions = [
		    //김호연
		    {
		        content: '<div style="font-size:13px">&nbsp;&nbsp;스카이글램핑 <a href="https://map.kakao.com/link/to/스카이글램핑,35.812066145941905,129.307340127348" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(35.812066145941905, 129.307340127348)
		    },
		    {
		    	content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;&nbsp;&nbsp;소금강오토캠프장<br><a href="https://map.kakao.com/link/to/소금강 오토캠프장,37.815669000883595,128.70814875596878" style="color:blue" target="_blank text-align="center"">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.815669000883595, 128.70814875596878)
		    },
		    {
		    	content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;별마로빌리지 <a href="https://map.kakao.com/link/to/별마로 빌리지,37.12548580257027,128.58521121177222" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.12548580257027, 128.58521121177222)
		    },
		    
		    //김재호
		    {
		    	content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;&nbsp;소풍캠핑장 <a href="https://map.kakao.com/link/to/소풍 캠핑장,37.59499002279045,127.50849359131277" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.59499002279045, 127.50849359131277)
		    },
		    {
		        content: '<div style="padding:5px;font-size:13px">북한산럭셔리카라반<br>&수영장글램핑 <a href="https://map.kakao.com/link/to/서울북한산럭셔리카라반&수영장글램핑,37.65070849812522,126.93774986919631" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.65070849812522, 126.93774986919631)
		    },
		    {
		        content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;글램비글램핑 <a href="https://map.kakao.com/link/to/글램비 글램핑,37.16920275874628,126.62845615569319" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.16920275874628, 126.62845615569319)
		    },
		    
		    //신영진
		    {
		        content: '<div style="padding:5px;font-size:13px">&nbsp;달빛정원글랭핑&캠핑<br><a href="https://map.kakao.com/link/to/달빛정원글랭핑&캠핑,37.59478196151374,127.49029467262564" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.59478196151374, 127.49029467262564)
		    },
		    {
		        content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;&nbsp;&nbsp;포천프로미스캠프<br><a href="https://map.kakao.com/link/to/포천 프로미스 캠프,38.051617378866915,127.34848592047923" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(38.051617378866915, 127.34848592047923)
		    },
		    {
		        content: '<div style="padding:5px;font-size:13px">태안캠핑코리아 <a href="https://map.kakao.com/link/to/태안 캠핑코리아,36.833928722298,126.18283664202004" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(36.833928722298, 126.18283664202004)
		    },
		    
		    //이원희
		    {
		        content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;동화힐링캠프 글램핑<br><a href="https://map.kakao.com/link/to/동화힐링캠프글램핑,37.8920618236847,126.84086966931291" style="color:blue" target="_blank">길찾기</a></div>' ,		        
		        latlng: new kakao.maps.LatLng(37.8920618236847, 126.84086966931291)
		    },
		    {
		        content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;&nbsp;하늘 숲 글램핑파크<br><a href="https://map.kakao.com/link/to/하늘 숲 글램핑파크,37.90518589342931,127.56198518465905" style="color:blue" target="_blank">길찾기</a></div>' ,	
		        latlng: new kakao.maps.LatLng(37.90518589342931, 127.56198518465905)
		    },
		    { 
		        content: '<div style="padding:5px;font-size:13px">왕산오토캠핑장 <a href="https://map.kakao.com/link/to/왕산 오토캠핑장,37.45895389595375,126.36637688712733" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.45895389595375, 126.36637688712733)
		    },	 
		    
		    //전상욱
		    {
		        content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;동강전망휴양림 오토<br>캠핑장 <a href="https://map.kakao.com/link/to/동강전망휴양림 오토캠핑장,37.26096665868323,128.6078757825842" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.26096665868323, 128.6078757825842)
		    },
		    {
		        content: '<div style="padding:5px;font-size:13px">변산반도국립공원 <br>고사포야영장 <a href="https://map.kakao.com/link/to/변산반도국립공원 고사포 야영장,35.661542818611686,126.50780945530366" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(35.661542818611686, 126.50780945530366)
		    },
		    {
		        content: '<div style="padding:5px;font-size:13px">&nbsp;&nbsp;&nbsp;사천비토솔섬 오토<br>캠핑장 <a href="https://map.kakao.com/link/to/사천비토솔섬 오토캠핑장,34.98756277821912,127.96620032644817" style="color:blue" target="_blank">길찾기</a></div>' ,		        
		        latlng: new kakao.maps.LatLng(34.98756277821912, 127.96620032644817)
		    },	 
		    {
		        content: '<div style="padding:5px; font-size:13px;">&nbsp;&nbsp;&nbsp;&nbsp;호수산장관광농원<br><a href="https://map.kakao.com/link/to/호수산장관광농원,37.23242719212892,127.54174179952983" style="color:blue" target="_blank">길찾기</a></div>' ,
		        latlng: new kakao.maps.LatLng(37.23242719212892, 127.54174179952983)
		    },
		    {
		        content: '<div style="padding:5px; font-size:13px">&nbsp;&nbsp;솔바람캠핑장 <a href="https://map.kakao.com/link/to/솔바람 캠핑장,36.025758183837276,126.66594238008817" style="color:blue" target="_blank">길찾기</a></div>' ,		   
		        latlng: new kakao.maps.LatLng(36.025758183837276, 126.66594238008817)
		    },

		];
		/* 아래와 같이도 할 수 있습니다 */
		
		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });
		
		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });
		            infowindow.open(map, marker);
		}

</script>
	
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
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</body>
</html>

