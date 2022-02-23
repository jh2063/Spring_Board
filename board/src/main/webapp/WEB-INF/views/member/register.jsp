<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

 <title>register page</title> 
</head>
<body>
<div class="container" >
	<h1 align="center"> 회원 가입<small></small></h1>
	<form action="/member/register" method="post">
	  <div class="form-group">
	    <label for="userId">ID</label>
	    <input type="text" class="form-control" id="userId" name="userId" placeholder="ID를 입력하세요">
	  </div>
	  <div class="form-group">
	    <label for="userPass">PW</label>
	    <input type="password" class="form-control"  id="userPass" name="userPass" placeholder="Password를 입력하세요">
	  </div>
	  <div class="form-group">
	    <label for="userName">Nickname</label>
	    <input type="text" class="form-control"  id="userName" name="userName"  placeholder="nickname을 입력하세요">
	  </div>
	  	<button type="submit" class="btn btn-default">등록</button>
	  	<a href="/" class="btn btn-default">메인으로</a>
	</form>

</div>

</body>
</html>