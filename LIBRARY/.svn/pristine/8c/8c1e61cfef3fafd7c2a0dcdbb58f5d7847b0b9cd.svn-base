<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
	text-align: center;
	margin: 0 auto;
}
</style>
</head>
<body>
<div>
제목 : ${clubBoard.cbBoardTitle } <br>
작성자 : ${clubBoard.memName }<br>
작성일 : ${clubBoard.cbBoardDate }<br>
내용 : ${clubBoard.cbBoardContent }<br>

<input type="button" value="목록" onclick="location.href='/club/clubDetail?clubCode=${clubBoard.clubCode}';">
<c:if test="${clubBoard.memId eq sessionScope.loginInfo.memId }">
	<input type="button" value="수정" onclick="location.href='/club/clubBoardUpdate?cbBoardNum=${clubBoard.cbBoardNum}&&clubCode=${clubBoard.clubCode }';">
	<input type="button" value="삭제" onclick="location.href='/club/clubBoardDelete?cbBoardNum=${clubBoard.cbBoardNum}&clubCode=${clubBoard.clubCode }';"> <br>
</c:if>

<form action="/club/clubBoardRegCmt" method="post">
<div>n개의 댓글</div>
<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
<input type="hidden" name="cbBoardNum" value="${clubBoard.cbBoardNum }">
<textarea rows="2" cols="30" name="cbCmtContent" style="resize: none;"></textarea> <br>
<div><input type="submit" value="댓글 등록" ></div>
</form>

<div id="cmtDiv">
<c:forEach items="${cbCmtList }" var="cmt">
<div>
${cmt.memName }
${cmt.cbCmtDate }<br>
${cmt.cbCmtContent }
<input type="submit" value="수정">
</div>

</c:forEach>
</div>

</div>
<!-- <script type="text/javascript" src="/resources/js/club/club_board_detail.js?ver=1"></script> -->
</body>
</html>