<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.subDiv{
	margin-left: 100px;
}
</style>
</head>
<body>
<div class="row">
	<div class="col-2">
		<div class="subDiv">
			<a href="/club/clubList">북클럽조회</a><br>
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
	<%-- 			  	<c:forEach items="${msgList }" var="msg">
				    <li value="${msg.msgCode }"><a class="dropdown-item" href="#">${msg.msgContent }<br>${msg.sendDate }</a></li>
				  	</c:forEach> --%>
				 </ul>
			</div>
		</div>
	</div>
	<div class="col-8">
		<div class="row">
			<div class="col-4">
				<form action="/admin/searchMember" method="post" id="searchForm">
					<div class="input-group mb-3">
					  <input type="text" class="form-control" name="keyword" placeholder="회원 ID" aria-label="Recipient's username" aria-describedby="button-addon2">
					  <button class="btn btn-secondary" type="submit" id="button-addon2">검색</button>
					</div>
				</form>
			</div>
		</div>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">No</th>
		      <th scope="col">회원 ID</th>
		      <th scope="col">성명</th>
		      <th scope="col">알림</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach items="${memList }" var="mem" varStatus="status">
			    <tr>
			      <th scope="row">${status.index + 1 }</th>
			      <td>${mem.memId }</td>
			      <td>${mem.memName }</td>
			      <td><button type="button" class="open-msgModal btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#messageModal" data-id="${mem.memId }"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
  		<path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
	</svg></button></td>
			    </tr>
			  </c:forEach>
		  </tbody>
		</table>
		<div class="row">
			<div class="col">
				<nav aria-label="...">
					<ul class="pagination pagination-sm justify-content-end">
						<li class="page-item <c:if test="${!pageVO.prev }">disabled</c:if>"><a href="/admin/memberManage?nowPage=${pageVO.beginPage - 1 }">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<c:forEach begin="${pageVO.beginPage }" end="${pageVO.endPage }" var="pageIndex">
							<li class="page-item <c:if test="${pageVO.nowPage eq pageIndex }">active</c:if>"><a class="page-link" href="javascript:search(${pageIndex });">${pageIndex }</a></li>
						</c:forEach>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="messageModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="/admin/sendMessage" method="post">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">회원 ID :</label>
            <input type="text" class="form-control" id="get-name" name="getId" readonly>
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label">내용 :</label>
            <textarea class="form-control" id="message-content" rows="7" name="msgContent" style="resize: none;" onkeyup="byteCheck(this, '500');"></textarea>
            <div style="text-align: right;"><span id="byteInfo">0</span> /500bytes</div>
          <div class="mb-3 justify-content-md-end">
	        <button type="button" class="btn btn-secondary justify-content-md-end" data-bs-dismiss="modal">닫기</button>
	        <button type="submit" class="btn btn-primary justify-content-md-end">메세지 전송</button>
          </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="/resources/js/admin/member_list.js"></script>
</body>
</html>