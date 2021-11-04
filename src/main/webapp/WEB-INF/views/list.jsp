<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>212 자유 게시판</title>

</head>
<body>
<jsp:useBean id="date" class="java.util.Date"/>
<c:set var="list" value="${campingList.list}"/>
<header class="freeboard-header">
	<h1 class="freeboard-header__title">212 ~ 자유 게시판  ~ </h1>
	<div class="freeboard-header-link">
		<a class="freeboard-header-link__writebtn" onclick="location.href='insert'">
			<i class="fa fa-pencil"> 새 글 쓰기</i>
		</a>
	</div>
</header>
	<table align="center" width="1000" cellspacing="0">
		<tr>
			<td width="70" align="center">번호</td>
			<td width="640" align="center">제목</td>
			<td width="100" align="center">이름</td>
			<td width="120" align="center">작성일</td>
			<td width="70" align="center">조회수</td>
		</tr>
		<!-- 글이 1건도 없을 때 -->
		<c:if test="${list.size() == 0 }">
		<tr>
			<td>
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
						${content}
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
 					${vo.up}
	 			</td>
			</tr>
			</c:forEach>
		</c:if>
		 <!-- 페이지 이동버튼 -->
		 <tr>
			<td class="table-lastdata" align="center" colspan="5">
			<!-- 처음으로 -->
				<c:if test="${campingList.currentPage > 1}">
					<a onclick="location.href='?currentPage=1'" >
						<i class="fas fa-backward"></i>
					</a>
				</c:if>
				
				<c:if test="${campingList.currentPage <= 1}">
					<a class=btn-none >
						<i class="fas fa-backward"></i>
					</a>
					<!-- <button class="button button2" type="button" title="이미 첫 페이지입니다." disabled="disabled">처음</button> -->
				</c:if>
			<!-- 10페이지 앞으로 -->
				<c:if test="${campingList.startPage > 1}">
					<a onclick="location.href='?currentPage=${campingList.startPage - 1}'" >
						<i class="fas fa-chevron-left"></i>
					</a>
				</c:if>
				<c:if test="${campingList.startPage <= 1}">
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
						<a class="btn-number" onclick="location.href='?currentPage=${i}'">
							${i}
						</a>
					</c:if>
				</c:forEach>
			<!-- 10페이지 뒤로 -->
				<c:if test="${campingList.currentPage < campingList.totalPage}">
					<a onclick="location.href='?currentPage=${campingList.endPage +1}'" >
						<i class="fas fa-chevron-right"></i>
					</a>
				</c:if>
				<c:if test="${campingList.currentPage >= campingList.totalPage}">
					<a class="btn-none" >
						<i class="fas fa-chevron-right"></i>
					</a>
				</c:if>
				
			<!-- 맨뒤로 -->
				<c:if test="${campingList.currentPage < campingList.totalPage}">
					<a onclick="location.href='?currentPage=${campingList.totalPage}&camNumber=${campNumber}'">
						<i class="fas fa-forward" ></i>
					</a>
				</c:if>
				<c:if test="${campingList.currentPage >= campingList.totalPage}">
					<a class=btn-none onclick="location.href='?currentPage=${campingList.totalPage}'">
						<i class="fas fa-forward" ></i>
					</a>
				</c:if>
			</td>
		</tr>
	</table>
	
<footer class="board-footer">
	<span>자유 게시판 ~~ made by leemanni</span>
	<a href="https://github.com/leemanni"><i class="fab fa-github"></i>&nbsp;leemanni's github</a>
</footer>

<script src="https://kit.fontawesome.com/27afa53023.js" crossorigin="anonymous"></script>
</body>
</html>