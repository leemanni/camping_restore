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
<link rel="stylesheet" href="css/contentview/contentview.css">
<link rel="stylesheet" href="css/mainpage/topmenu.css">
<link rel="stylesheet" href="css/content/navbar.css">
<!-- 지역별 토글 지정돼 있음 지우면 안됨 -->
<link rel="stylesheet" type="text/css" href="css/list/style.css" />
<link rel="stylesheet" type="text/css" href="css/contentView/contentview.css" />
<link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="js/mainpage.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<!-- <script type="text/javascript" src="./js/passwordCheck.js"></script> --> <!-- javascript 추출하기 아래의 script 코드 -->

<script>
	//비밀번호가 일치하는가 확인하는 함수
	function passwordCheckFunction() {
		var userPassword1 = ${vo.pw};
		var userPassword2 = $('#userPassword2').val();
		
		/* if( ${manager} != null){
			$("#correct").attr("disabled", true);
			$("#delete").attr("disabled", true);
		}else */ 
		if (userPassword1 != userPassword2) {
			$('#passwordCheckMessage').html('비밀번호가 일치하지 않습니다.');
			$('#userPassword2').val('');
			$("#correct").attr("disabled", true);
			$("#delete").attr("disabled", true);
		} else {
			$('#passwordCheckMessage').html('비밀번호가 일치합니다.');
			$("#correct").attr("disabled", false);
			$("#delete").attr("disabled", false);
		}
	}
	function submitbutton() {
		$('#userPassword2').val('');
		$('#passwordCheckMessage').html('');
		$("#correct").attr("disabled", true);
	}
</script>

<title>뭐해? 나와!</title>
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
	<!--시작-->
	<div id="contents">
		<div class="camp_cont_w">
			<div class="line_100">
				<span class="skip"></span>
			</div>
			<div class="layout">
				<ul class="camp_tab05">
					<li class="on"><a href="#" class="camp_intro">캠핑장 소개</a></li>
					<li id="c_guide"><a href="${campDataVO.url}" class="camp_guide">예약안내</a></li>
					<li id="c_map"><a href="list3?campNumber=${campNumber}" class="camp_map">위치/주변정보</a></li>
					<li id="c_review"><a href="list2?campNumber=${campNumber}" class="camp_review">캠핑 여행후기</a></li>
					<li id="c_notice"><a href="list4?campNumber=${campNumber}" class="camp_notice">캠핑장 이용수칙</a></li>
				</ul>

				<!-- 1개의 글 -->
				<form class="updateForm" action="update" method="post">
					<table class="up" width="1200" align="center" border="1" cellpadding="5" cellspacing="0">
					<thead>
						<tr>
							<td width="200" align="center">글번호</td>
							<td width="800" align="center">이름</td>
							<td width="200" align="center">작성일</td>
						</tr>
					</thead>
					<tbody>	
						<tr>
							<td align="center">${vo.idx}</td>
							<td align="center">
								<c:set var="name" value="${fn:replace(vo.name, '<', '&lt;')}" />
								<c:set var="name" value="${fn:replace(name, '>', '&gt;')}" /> ${name}
							</td>
							<td align="center"><jsp:useBean id="date" class="java.util.Date" /> 
								<c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date }">
									<fmt:formatDate value="${vo.writeDate}" pattern="a h:mm" />
								</c:if> <c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month || date.date != vo.writeDate.date }">
									<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)" />
								</c:if></td>
						</tr>

						<tr>
						<c:if test="${manager==null}">
							<th>비밀번호 확인</th>
							<td><input id="userPassword2" type="password" placeholder="비밀번호를 입력하세요" /></td>
							<td align="center"><input type="button" class="btn btn-primary" onclick="passwordCheckFunction()" value="비밀번호 확인" /></td>
						</c:if>
						</tr>
						<tr>
						<c:if test="${manager==null}">
							<td colspan="3"><h5 id="passwordCheckMessage" style="color: red;">비밀번호 일치 확인창</h5></td>
						</c:if>
						</tr>
						<tr>
							<th align="center">내용</th>
							<td colspan="3"><textarea rows="10" name="content" style="resize: none; width: 98%;">${vo.content}</textarea></td>
						</tr>
						<tr>
							<td colspan="3" align="center"><input type="hidden" name="idx" value="${vo.idx}" />
								 <input type="hidden" name="currentPage" value="${currentPage}" />
								 <input type="hidden" name="campNumber" value="${vo.campNumber}" />
								 <c:if test="${manager!=null}">
									 <input id="correct" type="submit" value="수정하기"/> 
									 <input id="delete" type="button" value="삭제하기" onclick="location.href='delete?idx=${vo.idx}&currentPage=${currentPage}'" /> 
								 </c:if>
								 <c:if test="${manager==null}">
								<input id="correct" type="submit" value="수정하기"disabled="disabled" /> 
								<input id="delete" type="button" value="삭제하기" disabled="disabled" 
									 	onclick="location.href='delete?idx=${vo.idx}&currentPage=${currentPage}'" /> 
								 </c:if>
								 <input type="button" value="돌아가기"
									onclick="location.href='list2?campNumber=${vo.campNumber}&currentPage=${currentPage}'" />
							</td>
						</tr>
						</tbody>
					</table>
				</form>
				<!-- 1개의 글 -->

			</div>
		</div>
	</div>
	</div>
	</section>
	<!-- 끝 -->

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
</body>
</html>