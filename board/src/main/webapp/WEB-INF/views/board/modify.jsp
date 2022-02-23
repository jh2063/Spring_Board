<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>게시물 수정</title>
</head>
<body>
<div class="container">
	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>
	
	<form role="form" method="post" autocomplete="off" class="form-horizontal">
		
		<label for="title" class="control-label">Title</label> 
		<input type="text" id="title " name="title" class="form-control" value="${view.title}">
		<label for="writer" class="control-label">Writer</label> 
		<input type="text" id="writer " name="writer" class="form-control"value=" ${view.writer}">
		<label for="content" class="control-label">Content</label>
		<textarea class="form-control"  id="content " name="content" rows="3">${view.content}</textarea><br>
		<button type="submit" class="btn btn-default">수정 등록</button>
		<a class="btn btn-default"  role="button" href="/board/view?bno=${view.bno}">취소</a>
	</form>
</div>
</body>

</html>