<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<div class="container" >
		<ul class="list-inline">
		  <br>
			<li><button type="button" class="btn btn-primary"
					onclick="location.href='/board/listPage?num=1';">글 목록(페이징)</button></li>
			<li><button type="button" class="btn btn-primary"
					onclick="location.href='/board/list';">글 목록</button></li>
			<li><button type="button" class="btn btn-primary"
					onclick="location.href='/board/write';">글 작성</button></li>
		</ul>
	</div>
</body>

</html>
