<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

	<form action="insert" method="post">
		<input type="text" name="name">
		<input type="password" name="pw">
		<input type="text" name="content">
		<!-- campNumber 임시로 지정해둔 거 12개 캠핑장 들어가면 페이지 별로 다르게 할 것 -->
		<input type="hidden" name="campNumber" value="1">
		<input type="submit">
	</form>
</body>
</html>
