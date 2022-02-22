<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="ko">
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Home</title>
</head>
<body>
	<div class="container" align="center">

		<c:if test="${member == null}">
		
			<br>
			<br>
			<img src="../resources/assets/img/portfolio/board.png" class="img-responsive center-block" alt="Responsive image">
			<h1 align="center">
			Portfolio <small>Spring MVC Board</small>
			</h1>
			<form role="form" class="form-inline" action="/member/login" method="post"  autocomplete="off">
					  <div class="form-group">
					    <label class="sr-only" for="userId">ID </label>
					    <input type="text" class="form-control" id="userId" name="userId" placeholder="ID">
					  </div>
					  <div class="form-group">
					    <label class="sr-only" for="userPass">Password</label>
					    <input type="password" class="form-control" id="userPass"  name="userPass"  placeholder="Password">
					  </div>
					  <div class="form-group">
					    <button type="submit" class="btn btn-primary">Sign in</button>
					    <a class="btn btn-primary" href="/member/register" role="button">Sign up</a>
					  </div>
			</form> 
        </c:if>
		
		<c:if test="${member != null}">
		<ul class="list-inline">
		  <br>
			<li><button type="button" class="btn btn-primary"
					onclick="location.href='/board/listPage?num=1';">글 목록(페이징)</button></li>
			<li><button type="button" class="btn btn-primary"
					onclick="location.href='/board/list';">글 목록</button></li>
			<li><button type="button" class="btn btn-primary"
					onclick="location.href='/board/write';">글 작성</button></li>
		</ul>
			<img src="../resources/assets/img/portfolio/welcome.png" alt="..."
				class="img-responsive">
			<strong><p>${member.userName}님  환영합니다!</p></strong>
			<div>
				<a class="btn btn-default btn-sm" href="member/modify" role="button">회원정보 수정</a>
				&nbsp; &nbsp; <a class="btn btn-info btn-sm" href="/member/logOut" role="button">로그아웃</a>
			</div>
			<br>
			<P>${serverTime}.</P>
		</c:if>

		<c:if test="${msg== false}">
			<p>로그인에 실패 하였습니다. ID 또는 Password를 다시 입력해 주십시오.</p>
		</c:if>

	</div>
</body>
</html>