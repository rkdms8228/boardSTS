<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기폼</title>
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
				
					<div id="writeForm">
					
						<form action="/board/write" method="get">
						
							<!-- 글쓴이 -->
							<input type="hidden" name="userNo" value="">
							
							<!-- 제목 -->
							<div class="form-group write">
								<label class="form-text" for="txt-title">제목</label>
								<input type="text" id="txt-title" name="title" value="" placeholder="제목을 입력해 주세요.">
							</div>
						
							<!-- 내용 -->
							<div class="form-group write">
								<textarea id="txt-content" name="content" value=""></textarea>
							</div>
							
							<div class="writeCS_btn">
								<a id="btn_cancel" href="/board">취소</a>
								<button id="btn_add" type="submit">등록</button>
							</div>
							
						</form><!-- //form -->
						
					</div><!-- //writeForm -->
					
				</div><!-- //board -->
				
			</div><!-- //content  -->

		</div><!-- //container  -->
		
	</div>
	<!-- //wrap -->
	
</body>
</html>
