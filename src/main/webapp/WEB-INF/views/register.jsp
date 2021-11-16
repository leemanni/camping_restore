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
<link rel="stylesheet" href="css/mainpage/login.css">
<link rel="stylesheet" href="css/mainpage/topmenu.css">
<link rel="stylesheet" href="css/content/navbar.css">
<link rel="stylesheet" href="js/mainpage.js">
<link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>

<script>
	function insertManager() {
		var userPassword1 = document.getElementsByClassName('pw1')[0].value
		var userPassword2 = document.getElementsByClassName('pw2')[0].value
		var form = document.getElementById('register');
		console.log(userPassword1);
		console.log(userPassword2);
		if(userPassword1 === userPassword2){
			form.submit();
		}else{
			alert('비밀번호가 일치하지 않습니다.');
			$('.pw1').eq(0).val('');
			$('.pw2').eq(0).val('');
			event.preventDefault();
		}
	}
</script>


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
<!------ Include the above in your HEAD tag ---------->

<div class="container">	    
	<div class="col-md-10 col-md-offset-1 main" >
		<div class="col-md-6 left-side" >
			<div class="slider">
   				<input type="radio" name="slide" id="slide1" checked>
   				<input type="radio" name="slide" id="slide2">
   				<input type="radio" name="slide" id="slide3">
   				<input type="radio" name="slide" id="slide4">
				    <ul id="imgholder" class="imgs">
        				<li><img src="./images/슬라이드1.JPG" width="450" height="510"></li>
        				<li><img src="./images/슬라이드2.JPG" width="450" height="510"></li>
        				<li><img src="./images/슬라이드3.JPG" width="450" height="510"></li>
        				<li><img src="./images/슬라이드4.JPG" width="450" height="510"></li>
    				</ul>
   					<div class="bullets">
       					<label for="slide1">&nbsp;</label>
       					<label for="slide2">&nbsp;</label>
       					<label for="slide3">&nbsp;</label>
       					<label for="slide4">&nbsp;</label>
   					</div>
			</div>


		</div><!--col-sm-6-->
		
			<div class="col-md-6 right-side">
				<h3>관리자 등록</h3>
		
			<!--Form with header-->
				<div class="form">
					<form id="register" action="insertManager" method="post">
				        <div class="form-group">
						    <label for="form2">아이디</label>
				            <input type="text" id="form2" class="form-control input-lg" placeholder="ID" name="id">
				            
				        </div>
				        
				        <div class="form-group">
						    <label for="form4">비밀번호</label>
				            <input type="password" id="form4" class="form-control input-lg pw1" placeholder="PW" name="pw">
				        </div>
				        
				        <div class="form-group">
						    <label for="form4">비밀번호 확인</label>
				            <input type="password" id="form4" class="form-control input-lg pw2" placeholder="PW-RE">
				        </div>
				       
				        <div class="text-xs-center">
	            			<button class="btn btn-deep-purple" type="submit" onclick="insertManager()">회원가입</button>
	        			</div>
					</form>
				</div>	
<!--/Form with header-->
			</div><!--col-sm-6-->
	</div><!--col-sm-8-->
</div><!--container-->
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

