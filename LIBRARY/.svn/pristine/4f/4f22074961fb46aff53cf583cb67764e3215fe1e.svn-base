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
	<table>
		<thead>
			<tr>
				<td>코드</td>
				<td>제목</td>
				<td>ISBN</td>
				<td>예약일</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userReserve }" var="reserve">
				<tr>
					<td>${reserve.rsvCode }</td>
					<td><a href="/book/bookDetail?bookCode=${reserve.bookCode}">${reserve.title }</a></td>
					<td>${reserve.isbn }</td>
					<td>${reserve.rsvDate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
</body>
</html>