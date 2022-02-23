<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">

<title>회원정보 modify</title>
</head>

<body>
	<div class="container" >
	<h1 align="center">회원정보 수정</h1>
		<form action="/member/modify"class="form-group" method="post" autocomplete="off"> 
		
			<label for="writer" class="control-label">nickname</label>
			<input type="text"  class="form-control" name="userName" value="${member.userName}" readonly="readonly"/><br />
			
			<label for="userPass" class="control-label">New Password</label>
			<input type="password"  class="form-control" id="userPass" name="userPass" />
			
				<button  class="btn btn-default" type="submit">회원정보 수정</button>
				<a class="btn btn-default" href="/" role="button">취소</a>
		</form>
	</div>
</body>
</html>