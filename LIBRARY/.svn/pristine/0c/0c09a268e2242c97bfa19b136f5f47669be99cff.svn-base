<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/club/clubCreate" method="post" id="regClub">
	<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId}">
	<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName}">
	북클럽 이름 : <input type="text" name="clubName"><br>
	인원수 : <input type="text" name="clubHeadCnt"><br>
	클럽소개 : <textarea rows="5" cols="50" name="clubIntro"></textarea><br>
	<input type="button" value="모임생성" onclick="clubCreate(this);">
</form>
<script type="text/javascript" src="/resources/js/club/club_create.js?ver=8"></script>
</body>
</html>