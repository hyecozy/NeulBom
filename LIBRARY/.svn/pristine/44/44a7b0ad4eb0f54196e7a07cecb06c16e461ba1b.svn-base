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
<div class="row">
	<div class="col-2"></div>
	<div class="col-6">
		<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">No</th>
			      <th scope="col">내용</th>
			      <th scope="col">날짜</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${msgList }" var="msg" varStatus="status">
			    <tr>
			      <th scope="row">${msgList.size() - status.index}</th>
			      <td>${msg.msgContent }</td>
			      <td>${msg.sendDate }</td>
				    </tr>
			  </c:forEach>
			  </tbody>
		</table>
	</div>
</div>
</body>
</html>