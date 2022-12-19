<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="/resources/css/board.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div id="wrap">
	
		<div id="center" class="clearfix">
				
			<h1><!-- 메인 로고 -->	
				<a href="/main">MyBoard</a>
			</h1>
			
		</div><!-- center -->

		<div id="container" class="clearfix">

			<div id="content">

				<div id="board">
					<div id="list">
						<form action="/board/list" method="get">
							<div class="form-group text-right">
								<input type="text" name="keyword">
								<button type="submit" id=btn_search>검색</button>
							</div>
						</form>
						<table >
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>글쓴이</th>
									<th>조회수</th>
									<th>작성일</th>
									<th>관리</th>
								</tr>
							</thead>
							<tbody>
								<!-- <c:forEach items="" var=""> -->
									<tr>
										<td></td>
										<td class="text-left"><a href=""></a></td>
										<td></td>
										<td></td>
										<td></td>
										<!-- <c:if test="">
											<td><a href="">[삭제]</a></td>
										</c:if> -->
									</tr>
								<!-- </c:forEach> -->
							</tbody>
						</table>
			
						<div id="paging">
							<ul>
								<li><a href="">◀</a></li>
								<li class="active"><a href="">1</a></li>
								<li><a href="">2</a></li>
								<li><a href="">3</a></li>
								<li><a href="">4</a></li>
								<li><a href="">5</a></li>
								<li><a href="">6</a></li>
								<li><a href="">7</a></li>
								<li><a href="">8</a></li>
								<li><a href="">9</a></li>
								<li><a href="">10</a></li>
								<li><a href="">▶</a></li>
							</ul>
						
							<div class="clear"></div>
							
						</div><!-- //paging -->
						
						<div class="btn_w">
						<%-- <c:if test="${authUser != null}"> --%>
							<a id="btn_write" href="/board/writeForm">글쓰기</a>
						<!-- </c:if> -->
						</div>
					
					</div>
					<!-- //list -->
				</div>
				<!-- //board -->
				
			</div>
			<!-- //content -->

		</div>
		<!-- //container -->
		
	</div>
	<!-- //wrap -->

</body>
</html>
