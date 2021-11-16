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
<link rel="stylesheet" href="css/list2/review.css">  <!-- 지역별 토글 지정돼 있음 자우면 안됨 -->
<link rel="stylesheet" href="css/content/navbar.css">
<link rel="stylesheet" type="text/css" href="css/list/style.css" />
<link rel="icon" href="images/favicon/favicon.ico" type="image/x-icon">
<script type="text/javascript" src="js/mainpage.mainpage.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
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
	<section id="section1" style="right: 0px">
		<div id="cont_inner">
			<div class="sub_layout layout">
				<article>
					<header class="camp_top_info">
						<div class="camp_info_box">
							<div class="img_b">
								<img src="./images/camping_1_${campNumber}.jpg" />
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
											<td>가평 달빛정원글랭핑 캠핑</td>
										</tr>
										<tr>
											<th scope="col">주소</th>
											<td>경기 가평군 설악면 유명산길 122-10</td>
										</tr>
										<tr>
											<th scope="col">위도</th>
											<td>37.59478196151374</td>
										</tr>
										<tr>
											<th scope="col">경도</th>
											<td>127.49029467262564</td>
										</tr>
										<tr>
											<th scope="col">입실 시간</th>
											<td>오후 3시 00분</td>
										</tr>
										<tr>
											<th scope="col">퇴실 시간</th>
											<td>오전 11시 00분</td>
										</tr>
										<tr>
											<th scope="col">홈페이지</th>
											<td><a href="http://moonlightgarden.pensionnara.co.kr/">홈페이지 바로가기</a>
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
							<li class="on"><a href="list?campNumber=${campNumber}" class="camp_intro">캠핑장 소개</a></li>
							<li id="c_guide"><a href="${campDataVO.url}" class="camp_guide">예약안내</a></li>
							<li id="c_map"><a href="list3?campNumber=${campNumber}" class="camp_map">위치/주변정보</a></li>
							<li id="c_review"><a href="list2?campNumber=${campNumber}" class="camp_review">캠핑 여행후기</a></li>
							<li id="c_notice"><a href="list4?campNumber=${campNumber}" class="camp_notice">캠핑장 이용수칙</a></li>
						</ul>

				<c:set var="list" value="${campingList.list}"/>
					<table class="board" align="center" width="1000" cellspacing="0">
						<tr>
							<td width="70" align="center">번호</td>
							<td width="640" align="center">내용</td>
							<td width="100" align="center">이름</td>
							<td width="120" align="center">작성일</td>
							<td width="70" align="center">좋아요</td>
							<td width="70" align="center">싫어요</td>
							<td width="70" align="center">수정</td>
							<c:if test="${manager != null }">
								<td width="70" align="center">삭제</td>
							</c:if>
						</tr>
						<!-- 글이 1건도 없을 때 -->
						<c:if test="${list.size() == 0 }">
						<tr>
							<td colspan="8" align="center">
								<h1>글이 없습니다.</h1>
							</td>
						</tr>
						</c:if>
						<!-- 글이 있을 때 -->
						<c:if test="${list.size() != 0 }">
							<c:forEach var="vo" items="${list}">
							<tr>
								<td class="table-idx" align="center" >${vo.idx}</td>
								<td class="table-content">
									<c:set var="content" value="${fn:replace(vo.content, '<', '&lt')} "/>
					 				<c:set var="content" value="${fn:replace(content, '>', '&gt')} "/>
					 					<c:if test="${vo.down < 11 }">
											${content}
					 					</c:if>
					 					<c:if test="${vo.down >= 11 }">
											<span style="color: tomato;">삭제된 게시글 입니다.</span>
					 					</c:if>
										<c:if test="${vo.up >= 10 }">
							 				<i class="far fa-thumbs-up"></i>
							 			</c:if>
								</td>
								<td align="center">
									<c:set var="name" value="${fn:replace(vo.name, '<', '&lt')} "/>
					 				<c:set var="name" value="${fn:replace(name, '>', '&gt')} "/>
									${vo.name }
								</td>
								<td align="center">
									<c:if test="${date.year == vo.writeDate.year && date.month == vo.writeDate.month && date.date == vo.writeDate.date }">
						 				<fmt:formatDate value="${vo.writeDate}" pattern="a h:mm"/>
						 			</c:if>
						 			<c:if test="${date.year != vo.writeDate.year || date.month != vo.writeDate.month || date.date != vo.writeDate.date }">
						 				<fmt:formatDate value="${vo.writeDate}" pattern="yyyy.MM.dd(E)"/>
					 				</c:if>
								</td>
								<td align="center">
				 					<input type="button" value="${vo.up}" onclick="location.href='up?campNumber=${campNumber}&idx=${vo.idx}&currentPage=${campingList.currentPage}'">
					 			</td>
					 			<td align="center">
				 					<input type="button" value="${vo.down}" onclick="location.href='down?campNumber=${campNumber}&idx=${vo.idx}&currentPage=${campingList.currentPage}'">
					 			</td>
					 			<td align="center">
				 					<input type="button" value="수정" onclick="location.href='contentView?campNumber=${campNumber}&idx=${vo.idx}&currentPage=${campingList.currentPage}'">
					 			</td>
					 			<c:if test="${manager != null }">
						 			<td align="center">
					 					<input type="button" value="삭제" onclick="location.href='delete?campNumber=${campNumber}&idx=${vo.idx}&currentPage=${campingList.currentPage}'">
						 			</td>
					 			</c:if>
							</tr>
							</c:forEach>
						</c:if>
						 <!-- 페이지 이동버튼 -->
						 <tr>
							<td class="table-lastdata" align="center" colspan="8">
							<!-- 처음으로 -->
								<c:if test="${campingList.currentPage > 1}">
									<a onclick="location.href='?campNumber=${campNumber}&currentPage=1'" >
										<i class="fas fa-backward"></i>
									</a>
								</c:if>
								
								<c:if test="${campingList.currentPage <= 1 && list.size() == 0}">
									<a class=btn-none >
										<i class="fas fa-backward"></i>
									</a>
								</c:if>
							<!-- 10페이지 앞으로 -->
								<c:if test="${campingList.startPage > 1}">
									<a onclick="location.href='?campNumber=${campNumber}&currentPage=${campingList.startPage - 1}'" >
										<i class="fas fa-chevron-left"></i>
									</a>
								</c:if>
								<c:if test="${campingList.startPage <= 1 }">
									<a class=btn-none>
										<i class="fas fa-chevron-left"></i>
									</a>
								</c:if>
								<c:forEach var="i" begin="${campingList.startPage}" end="${campingList.endPage}" step="1">
									<c:if test="${campingList.currentPage == i}">
										<a class="btn-none">
											${i}
										</a>
									</c:if>
									<c:if test="${campingList.currentPage != i}">
										<a class="btn-number" onclick="location.href='?campNumber=${campNumber}&currentPage=${i}'">
											${i}
										</a>
									</c:if>
								</c:forEach>
							<!-- 10페이지 뒤로 -->
								<c:if test="${campingList.currentPage < campingList.totalPage}">
									<a onclick="location.href='?campNumber=${campNumber}&currentPage=${campingList.endPage +1}'" >
										<i class="fas fa-chevron-right"></i>
									</a>
								</c:if>
								<c:if test="${campingList.currentPage >= campingList.totalPage && list.size() == 0}">
									<a class="btn-none" >
										<i class="fas fa-chevron-right"></i>
									</a>
								</c:if>
								
							<!-- 맨뒤로 -->
								<c:if test="${campingList.currentPage < campingList.totalPage}">
									<a onclick="location.href='?campNumber=${campNumber}&currentPage=${campingList.totalPage}'">
										<i class="fas fa-forward" ></i>
									</a>
								</c:if>
								<c:if test="${campingList.currentPage >= campingList.totalPage && list.size() == 0}">
									<a class=btn-none>
										<i class="fas fa-forward" ></i>
									</a>
								</c:if>
							</td>
						</tr>
					</table>	
	
					<!-- 글쓰기 시작-->
					<form action="insert" method="post" style="text-align: center;">
						<table class="insert" align="center">
						  <tr>
							<th colspan="5" style="text-align: center;">게시판에 글쓰기</th>
						  </tr>
						  <tr>
							<td>이름</td>
							<td align="left"><input type="text" id="name" name="name"/></td>
							<td rowspan='2'>내용</td>
							<td align="left" rowspan='2'><textarea rows="3" cols="65" id="content" name="content" style="resize: none;"></textarea></td>
							<td rowspan='2' align="center">
								<input type="submit" value="글남기기"/><br>
								<input type="reset" value="다시쓰기"/>
							</tr>
						  <tr>
							<td>비밀번호</td>
							<td align="left"><input type="password" id="pw" name="pw"/></td>
						  </tr>
						</table>
						<input type="hidden" id="campNumber" name="campNumber" value="${campNumber}">
					</form>
					<!-- 글쓰기 끝-->
						
						
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

<script src="https://kit.fontawesome.com/27afa53023.js" crossorigin="anonymous"></script>
</body>
</html>