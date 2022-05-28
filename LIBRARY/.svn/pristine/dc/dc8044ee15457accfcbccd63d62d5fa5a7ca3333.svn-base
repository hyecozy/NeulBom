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
		<a
			href="/clubAdmin/clubAdmin?clubCode=${sessionScope.loginInfo.clubCode }">북클럽관리</a>
		<br>
	</c:if>
	<a href="/admin/memberManage">회원관리</a><br>

	<div class="modal fade" id="exampleModalToggle" aria-hidden="true"
		aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel">Modal 1</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">Show a second modal and hide this one
					with the button below.</div>
				<div class="modal-footer">
					<button class="btn btn-primary"
						data-bs-target="#exampleModalToggle2" data-bs-toggle="modal">Open
						second modal</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="exampleModalToggle2" aria-hidden="true"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">Modal 2</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">Hide this modal and show the first
					with the button below.</div>
				<div class="modal-footer">
					<button class="btn btn-primary"
						data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Back
						to first</button>
				</div>
			</div>
		</div>
	</div>
	<a class="btn btn-primary" data-bs-toggle="modal"
		href="#exampleModalToggle" role="button">Open first modal</a>

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
			   <c:choose>
					<c:when test="${club.clubNumberPeople eq club.clubHeadCnt }">
						<a href="#" class="btn btn-primary ">신청마감</a>
					</c:when>
					<c:otherwise>
			  	  		<a href="#" class="btn btn-primary " onclick="clubJoin('${club.clubCode}');">신청하기</a>
					</c:otherwise>	
				</c:choose> 
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