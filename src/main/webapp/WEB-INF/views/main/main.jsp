<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 메인 화면</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

	<div id="wrap">
	
		<div id="center" class="clearfix">
			<!-- 메인 로고 -->		
			<h1>
				<a href="/main">MyBoard</a>
			</h1>
	
			<c:choose>
				<c:when test="${empty authUser}">
					<ul>
						<!-- 로그인 전 -->
						<li><a href="/board" class="board">게시판</a></li>
						<li><a href="/loginForm" class="btn_s log">로그인</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul>
						<!-- 로그인 후 -->
						<li>${sessionScope.authUser.name} 님 안녕하세요 คʕ•ﻌ•ʔค	<a href="/logout" class="btn_s">로그아웃</a></li>
						<li><a href="/board" class="board">게시판</a></li>
					</ul>
				</c:otherwise>
			</c:choose>
			
		</div><!-- center -->

	</div><!-- wrap -->
	
</body>
</html>