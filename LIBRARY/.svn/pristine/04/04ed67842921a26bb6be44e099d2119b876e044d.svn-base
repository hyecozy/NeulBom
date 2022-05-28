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
	<h2>도서대여목록</h2>
	<table>
		<thead>
			<tr>
				<td>코드</td>
				<td>회원아이디</td>
				<td>제목</td>
				<td>ISBN</td>
				<td>대여일</td>
				<td>반납예정일</td>
				<td>대여상태</td>
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
							<button type="button" data-toggle="modal" onclick="showModal(this);"data-target="#returnBook" class="btn btn-primary" >
								대여중
							</button>
						</c:when>
						<c:when test="${borrow.status eq 1 }" >
							<button type="button" data-toggle="modal" onclick="showModalOD(this);" data-target="#returnOverdue" class="btn btn-primary" >
								연체
							</button>
						</c:when>
						<c:otherwise>반납완료</c:otherwise>	
					</c:choose></td>
 				</tr>
			</c:forEach>
		</tbody>
	</table>




<!-- 정상 반납 Modal -->
<div class="modal fade" id="returnBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <!-- !!!!!!!!!!!!!!!! 모달로 위의 값 꼭 받아오기 !!!!!!!!!! -->
  <input type="hidden"  id="originIsbn" value="">
  <input type="hidden"  id="originBrCode" value="">
  <input type="hidden"  id="originMemId" value="">
  <input type="hidden"  id="originIsbn" value="">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
      
				반납하시겠습니까?
      </div>
        <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" onclick="returnBook();">반납</button>
    </div>
  </div>
 </div>

<!-- 연체 반납 Modal -->
<div class="modal fade" id="returnOverdue" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <!-- !!!!!!!!!!!!!!!! 모달로 위의 값 꼭 받아오기 !!!!!!!!!! -->
  <input type="hidden"  id="originIsbn" 	value="">
  <input type="hidden"  id="originBrCode" 	value="">
  <input type="hidden"  id="originMemId" 	value="">
  <input type="hidden"	id="originRtDate" 	value="">
  <input type="hidden"  id="originIsbn" 	value="">
  <input type="hidden"  id="originLimitDate" value="">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
      
				반납하시겠습니까?
      </div>
        <button type="button" class="btn btn-default" id="closeModalBtnOD" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" onclick="returnOverdue();">반납</button>
    </div>
  </div>
 </div>	

<script type="text/javascript" src="/resources/js/book/admin_returnBook.js?ver=31"></script>
<script type="text/javascript" src="/resources/js/book/admin_returnOverdue.js?ver=19"></script>
</body>
</html>