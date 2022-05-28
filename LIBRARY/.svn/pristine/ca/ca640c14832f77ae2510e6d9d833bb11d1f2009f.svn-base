<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.card {
	text-align: cen
}
.row{
	width: 800px;
	margin: 0 auto;
}
</style>
</head>
<body>
<div class="subDiv">
	북클럽조회<br>
	<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y' }">
		<a href="/clubAdmin/clubAdmin?clubCode=${sessionScope.loginInfo.clubCode }">북클럽관리</a>
	</c:if> 
</div>

<div class="row">
	<c:forEach items="${clubList }" var="club">
		<div class="col-6">
			<div class="card" style="width: 18rem; height: 250px;">
			  <div class="card-body">
			    <h5 class="card-title"><a href="/club/clubDetail?clubCode=${club.clubCode }">${club.clubName }</a></h5>
			    <h6 class="card-subtitle mb-2 text-muted" style="font-size: 14px;">모집 : ${club.clubNumberPeople} / ${club.clubHeadCnt }</h6>
			    <p class="card-text" style="font-size: 14px;">${club.clubIntro }</p>
			    <a href="#" class="btn btn-primary" onclick="createClub();">신청하기</a>
			  </div>
			</div>
		</div>
		
	</c:forEach>
</div>

<div class="clubCreate">
	<input type="hidden" id="memId" value="${sessionScope.loginInfo.memId }">
	<input type="hidden" id="clubAdmin" value="${sessionScope.loginInfo.clubAdmin }">
	<input type="hidden" id="clubCode" value="${sessionScope.loginInfo.clubCode }">
</div>
<script type="text/javascript" src="/resources/js/club/club_list.js"></script>
</body>
</html>