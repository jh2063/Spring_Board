<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 조회</title>
</head>
<!-- 조회 페이지의 구성은 작성 페이지와 크게 다르지 않기 때문에 이런식으로 복사해서 사용 -->
<body>

	<div class="container" >
		<div id="nav">
			<%@ include file="../include/nav.jsp"%>
		</div>

		<div class="form-group">
			<label for="title" class="control-label">Title</label> <input
				type="text" id="title " class="form-control" value="${view.title}">
		</div>
		<div class="form-group">
			<label for="writer" class="control-label">Writer</label>
			 <input type="text" id="writer " class="form-control" value=" ${view.writer}">
		</div>
		<div class="form-group">
			<label for="content" class="control-label">Content</label>
			<textarea class="form-control"  id="content " rows="3">${view.content}</textarea>
		</div>


		<div>
			<a class="btn btn-default" href="/board/modify?bno=${view.bno}" role="button">수정</a>
			<a class="btn btn-default" href="/board/delete?bno=${view.bno}" role="button">삭제</a>
		</div>
	</div>
</body>
</html>