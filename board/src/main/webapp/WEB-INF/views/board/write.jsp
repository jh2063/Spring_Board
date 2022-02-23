<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>게시물 write</title>
</head>
<body>



	<div class="container" >
	<h1 align="center">게시글 작성</h1>
		<c:if test="${msg == null }">

		<form class="form-group" method="post">
	
			<label for="title" class="control-label">Title</label> 
			<input type="text" name="title"  class="form-control" /><br /> 
			
			<label for="writer" class="control-label">Writer</label>
			<input type="text"  class="form-control" name="writer" value="${member.userName}"  readonly="readonly"/><br /> 
			<label for="content" class="control-label">Content</label>
			<textarea class="form-control"  id="content " cols="50" rows="5" name="content"></textarea>
			<br />
			<button class="btn btn-default" type="submit">등록</button>
			<a class="btn btn-default" href="/board/list" role="button">취소</a>
		</form>
		</c:if>
		
		<c:if test="${msg == false}">
		<p> 로그인 후에 글을 작성해 주세요. </p>
		</c:if>
	</div>
</body>
</html>