<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-4"></div>
	<div class="col-4">
		<form action="/club/clubDetailUpdate" method="post">
			<input type="hidden" name="clubCode" value="${club.clubCode }">
			모임명 : <input type="text" name="clubName" value="${club.clubName }"> <br>
			모임 인원수 : <input type="text" name="clubHeadCnt" value="${club.clubHeadCnt }"><br>
			모임장 : ${club.memName }<br>
			모임소개:<br> <textarea rows="9" cols="60" name="clubIntro">${club.clubIntro }</textarea> <br>
			<input type="submit" value="수정완료">
		</form>
	</div>
</div>
</body>
</html>