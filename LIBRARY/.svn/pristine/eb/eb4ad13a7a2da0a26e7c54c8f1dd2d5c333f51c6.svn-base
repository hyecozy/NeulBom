g<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
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
			<c:forEach items="${ntBoardList }" var="ntBoardInfo" varStatus="status">
			<tr>
					<td>${ntBoardInfo.ntCode}</td>
					<td><a href="/board/ntBoardDetail?ntCode=${ntBoardInfo.ntCode }">${ntBoardInfo.ntTitle }</a></td>
					<td>${ntBoardInfo.memName }</td>
					<td>${ntBoardInfo.ntCreateDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" >
			<input type="button" value="글쓰기" onclick="location.href='ntBoardWrite'">
		</c:if>

		
	</div>
	
</div>
</body>
</html>