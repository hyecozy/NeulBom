<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
ul.list {
list-style-type: none;
margin: 0;
padding: 0;
border-bottom: 1px solid #ccc;
}
ul.list::after {
content: '';
display: block;
clear: both;
}
.tab-button {
display: block;
padding: 10px 20px 10px 20px;
float: left;
margin-right: -1px;
margin-bottom: -1px;
color: grey;
text-decoration: none;
cursor: pointer;
}
.active {
border-top: 2px solid orange;
border-right: 1px solid #ccc;
border-bottom: 1px solid white;
border-left: 1px solid #ccc;
color: black;
margin-top: -2px;
}
.tab-content {
display: none;
padding: 10px;
}
.show {
display: block;
}
table{
	 width: 600PX;
	 text-align: center;
}
table td{
	border-bottom: 1px solid #ccc;
}
.subDiv{
	margin-left: 100px;
}
.container mt-5{
	width: 800px;
}
</style>
</head>
<body>
<div class="subDiv">
	<a href="/club/clubList">북클럽조회</a><br>
	<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y' }">
		<a href="/clubAdmin/clubAdmin?clubCode=${sessionScope.loginInfo.clubCode }">북클럽관리</a>
	</c:if> 
</div>

<div class="container mt-5">
    <ul class="list">
      <li class="tab-button active" value="0">북클럽 멤버 목록</li>
      <li class="tab-button <c:if test="${value eq 1 }">active</c:if>" value="1">북클럽 신청 멤버 목록</li>
    </ul>
  
    <div class="tab-content show">
      <table>
	      <colgroup>
	      	<col width="10%">
	      	<col width="*">
			<thead>
				<tr>
					<td>No</td>
					<td>아이디</td>
					<td>이름</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${clubMemList }" var="clubMem" varStatus="status">
				<tr>
					<td>${status.index + 1 }</td>
					<td>${clubMem.memId }</td>
					<td>${clubMem.memName }</td>
					<td>
						<c:if test="${clubMem.clubAdmin eq 'N' }">
							<input type="button" value="강퇴" onclick="kick('${clubMem.memId }');">
						</c:if>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
      
    </div>
    
    <div class="tab-content <c:if test="${value eq 1 }">show</c:if>" id="applyList">
	      <table>
	      <colgroup>
	      	<col width="10%">
	      	<col width="*">
	      	<col width="*">
	      	<col width="10%">
	      	<col width="10%">
			<thead>
				<tr>
					<td>No</td>
					<td>아이디</td>
					<td>이름</td>
					<td></td>
					<td></td>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${applyList }" var="apply" varStatus="status">
				<tr>
					<td>${status.index + 1 }</td>
					<td>${apply.memId }</td>
					<td>${apply.memName }</td>
					<td>
						<input type="button" value="수락" onclick="acceptance('${apply.clubCode}', '${apply.memId }');">
					</td>
					<td>
						<input type="button" value="거절" onclick="rejection('${apply.memId}');">
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
    </div>
</div>

<script type="text/javascript" src="/resources/js/club/club_manage.js?ver=7"></script>
</body>
</html>