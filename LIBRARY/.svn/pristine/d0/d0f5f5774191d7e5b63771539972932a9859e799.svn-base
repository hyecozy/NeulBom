<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	text-align: center;
	width: 800px;
}
.boardDiv table{
	border: 1px solid black;
	border-collapse: collapse;
	width: 800px;
	margin-top: 50px;
	text-align: center;
	margin-bottom: 50px;
}
.boardDiv table td{
	border: 1px solid black;
}
.clubInfo{
	text-align: left;
}
.memListTable{
	text-align: center;
}
table{
	width: 800px;
}
</style>
</head>
<body>
<div class="container">
	<div class="clubInfo">
		<table>
			<tr>
				<td>
					모임명 : ${club.clubName } <br>
					모임 인원수 : ${club.clubHeadCnt }<br>
					모임장 : ${club.memName }<br>
					모임소개 : ${club.clubIntro }
				</td>
				<td style="text-align: right;">
					<c:forEach items="${memList }" var="mem">
						1
						ㅇ
						${mem.memName }
						완독수<br>
					</c:forEach>
				</td>
			</tr>
		</table>

	</div>
	
	<div class="boardDiv">
		<table>
			<thead>
			<tr>
				<td>No</td>
				<td>제목</td>
				<td>작성자</td>
				<td>날짜</td>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${boardList }" var="boardInfo" varStatus="status">
				<tr>
					<td>${boardList.size() - status.index }</td>
					<c:choose>
						<c:when test="${sessionScope.loginInfo.clubCode eq boardInfo.clubCode }">
							<td><a href="/club/clubBoardDetail?cbBoardNum=${boardInfo.cbBoardNum }&&clubCode=${boardInfo.clubCode}">${boardInfo.cbBoardTitle } (${boardInfo.cbCmtCount })</a></td>
						</c:when>
						<c:otherwise>
							<td><a href="" onclick="cbDetail();">${boardInfo.cbBoardTitle } (${boardInfo.cbCmtCount })</a></td>
						</c:otherwise>
					</c:choose>
					<td>${boardInfo.memName }</td>
					<td>${boardInfo.cbBoardDate }</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<c:if test="${not empty sessionScope.loginInfo }">
			<input type="button" value="글쓰기" onclick="location.href='/club/clubBoardWrite?clubCode=${club.clubCode}';">
		</c:if>
		<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y' }">
			<input type="button" value="수정" onclick="location.href='/club/clubDetailUpdate?clubCode=${club.clubCode}';">
		</c:if>
	</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_detail.js"></script>
</body>
</html>