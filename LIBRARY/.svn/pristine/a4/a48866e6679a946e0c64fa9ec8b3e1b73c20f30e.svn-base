<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>${adminBorrow.memId }도서대여목록</h2>
	<table>
		<thead>
			<tr>
				<td>코드</td>
				<td>회원아이디</td>
				<td>제목</td>
				<td>ISBN</td>
				<td>예약일</td>
				<td>대여</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${adminBorrow }" var="borrow">
				<tr>
					<td>${borrow.brCode }</td>
					<td>${borrow.memId }</td>
					<td>${borrow.title }</td>
					<td>${borrow.isbn }</td>
					<td>${borrow.brDate }</td>
					<td>${borrow.rtDate }</td>
					<td><c:choose>
						<c:when test="${borrow.status eq 0}">
							<button type="button" data-toggle="modal" id="openModalBtn" data-target="#returnBook" class="btn btn-primary" >
								대여중
							</button>
						</c:when>
						<c:when test="${borrow.status eq 1 }">
							<button type="button" data-toggle="modal" id="openModalBtn" data-target="#returnBook" class="btn btn-primary" >
								연체
							</button>
						</c:when>
						<c:otherwise>반납완료</c:otherwise>	
					</c:choose></td>
 				</tr>
			</c:forEach>
		</tbody>
	</table>




<!-- Modal -->
<div class="modal fade" id="returnBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
				반납하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" onclick="returnBook();">반납</button>
      </div>
    </div>
  </div>
 </div>
	

<script type="text/javascript" src="/resources/js/book/admin_retrun.js?ver=1"></script>
</body>
</html>