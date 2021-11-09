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
<link rel="stylesheet" href="css/mainpage/topmenu.css">
<!-- 지역별 토글 지정돼 있음 지우면 안됨 -->
<link rel="stylesheet" type="text/css" href="css/list/style.css" />
<link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="js/mainpage.mainpage.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>

<script>
	//비밀번호가 일치하는가 확인하는 함수
	function passwordCheckFunction() {
		var userPassword1 = ${vo.pw};
		var userPassword2 = $('#userPassword2').val();
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

<title>캠핑장</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="mainpage">캠핑 리뷰 사이트(이름 미정)</a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">홈페이지
							소개<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">홈페이지 소개</a></li>
						</ul></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							캠핑장 소개<span class="caret"></span>
					</a>
						<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
							<li class="dropdown-submenu"><a tabindex="-1" href="#">서울</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">서울북한산럭셔리카라반&수영장글램핑</a></li>
								</ul></li>

							<li class="dropdown-submenu"><a tabindex="-1" href="#">경기</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">가평 달빛정원글랭핑&캠핑</a></li>
									<li><a tabindex="-1" href="#">글램비 글램핑</a></li>
									<li><a tabindex="-1" href="#">동화힐링캠프글램핑</a></li>
									<li><a tabindex="-1" href="#">소풍 캠핑장</a></li>
									<li><a tabindex="-1" href="#">왕산 오토캠핑장</a></li>
									<li><a tabindex="-1" href="#">포천 프로미스 캠프</a></li>
									<li><a tabindex="-1" href="#">하늘 숲 글램핑파크</a></li>
									<li><a tabindex="-1" href="#">호수산장관광농원</a></li>
								</ul></li>

							<li class="dropdown-submenu"><a tabindex="-1" href="#">강원</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">동강 전망휴양림 오토캠핑장</a></li>
									<li><a tabindex="-1" href="#">별마로 빌리지</a></li>
									<li><a tabindex="-1" href="#">소금강 오토캠프장</a></li>
								</ul></li>

							<li><a tabindex="-1" href="#">충북</a></li>

							<li class="dropdown-submenu"><a tabindex="-1" href="#">충남</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">솔바람 캠핑장</a></li>
									<li><a tabindex="-1" href="#">태안 캠핑코리아</a></li>
								</ul></li>

							<li class="dropdown-submenu"><a tabindex="-1" href="#">전북</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">변산반도국립공원 고사포 야영장</a></li>
								</ul></li>

							<li><a tabindex="-1" href="#">전남</a></li>

							<li class="dropdown-submenu"><a tabindex="-1" href="#">경북</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">스카이글램핑</a></li>
								</ul></li>

							<li class="dropdown-submenu"><a tabindex="-1" href="#">경남</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">사천 비토 솔섬 오토캠핑장</a></li>
								</ul></li>

							<li><a tabindex="-1" href="#">제주</a></li>
						</ul></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							캠핑장 리뷰 게시판<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="list">캠핑장 리뷰 게시판</a></li>
						</ul></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							캠핑장 길찾기<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="path">캠핑장 길찾기</a></li>
						</ul></li>
				</ul>

				<%-- 	<%
			 // 접속하기는 로그인이 되어있지 않은 경우만 나오게한다
				if(userID == null) {
			%> --%>

				<div class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							접속하기<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="loginMain">로그인</a></li>
							<li><a href="register">회원가입</a></li>
						</ul></li>
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
					<li id="c_map"><a href="#" class="camp_map">위치/주변정보</a></li>
					<li id="c_review"><a href="list2?campNumber=${campNumber}" class="camp_review">캠핑 여행후기</a></li>
					<li id="c_notice"><a href="#" class="camp_notice">공지/이벤트</a></li>
				</ul>

				<!-- 1개의 글 -->
				<form action="update" method="post">
					<table width="600" align="center" border="1" cellpadding="5" cellspacing="0">
						<tr>
							<td width="80" align="center">글번호</td>
							<td width="320" align="center">이름</td>
							<td width="120" align="center">작성일</td>
						</tr>
						<tr>
							<td align="center">${vo.idx}</td>
							<td align="center"><c:set var="name" value="${fn:replace(vo.name, '<', '&lt;')}" /> <c:set var="name"
									value="${fn:replace(name, '>', '&gt;')}" /> ${name}</td>
							<td align="center"><jsp:useBean id="date" class="java.util.Date" /> <c:if
									test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month &&
											date.date == vo.writeDate.date }">
									<fmt:formatDate value="${vo.writeDate}" pattern="a h:mm" />
								</c:if> <c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month ||
											date.date != vo.writeDate.date }">
									<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)" />
								</c:if></td>
						</tr>

						<tr>
							<td>비밀번호 확인</td>
							<td><input id="userPassword2" type="password" placeholder="비밀번호를 입력하세요" /></td>
							<td align="center"><input type="button" class="btn btn-primary" onclick="passwordCheckFunction()" value="비밀번호 확인" /></td>
						</tr>
						<tr>
							<td colspan="3"><h5 id="passwordCheckMessage" style="color: red;">비밀번호 일치 확인창</h5></td>
						</tr>
						<tr>
							<td align="center">내용</td>
							<td colspan="3"><textarea rows="10" name="content" style="resize: none; width: 98%;">${vo.content}</textarea></td>
						</tr>
						<tr>
							<td colspan="3" align="center"><input type="hidden" name="idx" value="${vo.idx}" /> <input type="hidden" name="currentPage"
								value="${currentPage}" /> <input type="hidden" name="campNumber" value="${vo.campNumber}" /> <input id="correct" type="submit" value="수정하기"
								disabled="disabled" /> <input id="delete" type="button" value="삭제하기" disabled="disabled"
								onclick="location.href='delete?idx=${vo.idx}&currentPage=${currentPage}'" /> <input type="button" value="돌아가기"
								onclick="location.href='list2?campNumber=${vo.campNumber}&currentPage=${currentPage}'" /></td>
						</tr>
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
			<br />
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
						<a href="https://program.genie.co.kr/swf/main" class="list-group-item">공식 홈페이지</a> <a href="https://www.instagram.com/mnet_dance/"
							class="list-group-item">공식 인스타그램</a> <a href="https://program.naver.com/p/18923570" class="list-group-item">공식 네이버TV</a>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>