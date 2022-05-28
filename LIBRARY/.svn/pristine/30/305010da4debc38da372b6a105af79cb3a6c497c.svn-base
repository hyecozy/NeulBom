<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${ntBoard.ntCode }
	<table>
		<tr>
			<td>${ntCode }</td>
			<td>${ntBoardInfo.ntTitle }</td>
		</tr>
		<tr>
			<td>${ntBoardInfo.memName}</td>
			<td>${ntBoardInfo.ntCreateDate}</td>
		</tr>
		<tr>
			<td>${ntBoardInfo.ntContent}</td>
		</tr>
		
		<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" >
			<input type="button" value="수정" onclick="location.href='updateNtBoardDetail'">
		</c:if>
		<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" >
			<input type="button" value="삭제" onclick="location.href='deleteNtBoardDetail'">
		</c:if>
		
	</table>
</body>
</html>