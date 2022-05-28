<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

		
		
	<input id="bookName" type="text" placeholder="제목">
	<input id="bookWriter" type="text" placeholder="저자">
	<input id="bookPublisher" type="text" placeholder="출판사">
	<button id="search">검색</button>
	
	<form action="/book/regHopeBook" method="post">
		<table>
			<thead>
				<tr>
					<th>책표지</th>
					<th>제목</th>
					<th>작가</th>
					<th>출판사</th>
					<th> - </th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td ><p id="coverimg"></p></td>
					<td id="title"><input type="hidden" id="title" name="title" value=""></td>
					<td id="writer"><input type="hidden" id="writer" name="writer" value=""></td>
					<td id="publisher"><input type="hidden" id="publisher" name="publisher" value=""></td>
				</tr>
			</tbody>
		</table>
	</form>
	
	<div id="regHpBookInfo">
		<table>
			<tr>
				<td>신청인</td>
				<td> ${sessionScope.loginInfo.memName }</td>
				<td>신청일</td>
				<td><%= sf.format(nowTime) %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" id="title" name="title" value=""></td>
			</tr>
			<tr>
				<td>저자</td>
				<td><input type="text" id="writer" name="writer" value=""></td>
			</tr>
			<tr>
				<td>출판사</td>
				<td><input type="text" id="publisher" name="publisher" value=""></td>
			</tr>
		</table>
		<div>
			<button type="button" id="insertHpBook" onclick="insertHpBook();">신청하기</button>
		</div>
	</div>
	






<script type="text/javascript" src="/resources/js/book/reg_hope_book.js?ver=20"></script>
</body>
<meta name="referrer" content="unsafe-url" />
</html>