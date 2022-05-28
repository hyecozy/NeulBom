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
.container{
	width: 800px;
	margin: 0 auto;

}
table{
	width: 800px;
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
	margin-bottom: 100px;
}
table tr, td{
	border: 1px solid black;
}
.subDiv{
	margin-left: 100px;
}
.clubCreate{
	text-align: right;
}
.btn_area{
	position: fixed;
	bottom: 0;
}
</style>
</head>
<body>
<div class="subDiv">
	북클럽조회<br>
	<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y' }">
		<a href="/clubAdmin/clubAdmin?clubCode=${sessionScope.loginInfo.clubCode }">북클럽관리</a><br>
	</c:if> 
	<a href="/admin/memberManage">회원관리</a><br>
	
	<div class="dropdown">
		<span class="dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
			<input type="hidden" name="getId" value="${sessionScope.loginInfo.memId }">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
		  		<path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
			</svg>
		</span>
		 <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		  	<li><a class="dropdown-item" href="#">Something else here</a></li>
		  	<c:forEach items="${msgList }" var="msg">
		    <li value="${msg.msgCode }"><a class="dropdown-item" href="#">${msg.msgContent }<br>${msg.sendDate }</a></li>
		  	</c:forEach>
		 </ul>
	</div>
</div>


<div class="row mb-3">
<div style="margin: 0 auto; margin-bottom: 20px;">북클럽 조회</div>
	<c:forEach items="${clubList }" var="club">
		<div class="col-6">
			<div class="card h-100" style="width: 23rem;">
			  <div class="card-body">
			    <h5 class="card-title"><a href="/club/clubDetail?clubCode=${club.clubCode }">${club.clubName }</a></h5>
			    <h6 class="card-subtitle mb-2 text-muted" style="font-size: 14px;">모집 : ${club.clubNumberPeople} / ${club.clubHeadCnt }</h6>
			    <p class="card-text" style="font-size: 14px;">${club.clubIntro }</p>
			    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  	  <a href="#" class="btn btn-primary " onclick="createClub();">신청하기</a>
			  	 </div>
			  </div>
			</div>
		</div>
		
	</c:forEach>
</div>

<div class="clubCreate">
	<input type="hidden" id="memId" value="${sessionScope.loginInfo.memId }">
	<input type="button" style="margin-right: 100px;" value="북클럽 생성" onclick="createClub();" >
	<input type="hidden" id="clubAdmin" value="${sessionScope.loginInfo.clubAdmin }">
	<input type="hidden" id="clubCode" value="${sessionScope.loginInfo.clubCode }">
</div>
<script type="text/javascript" src="/resources/js/club/club_list.js"></script>
</body>
</html>