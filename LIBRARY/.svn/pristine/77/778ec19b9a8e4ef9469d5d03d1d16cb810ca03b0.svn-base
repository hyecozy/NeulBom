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

 <c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" > 
	<a href="/book/regBookForm">등록</a>
 </c:if> 
 <c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" > 
	<a href="/book/reserveListAdmin">예약목록확인</a>
 </c:if> 
  <c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" > 
	<a href="/book/selectBrList">대여목록확인</a>
 </c:if> 
 
 
<a href="/book/searchHpBook">희망도서</a>
<a href="/book/updateOverdue">연체관리확인용</a> <!-- 수정하고 삭제하세료 -->
<a href="/book/bookList">등록도서확인</a>


<a href="/book/selectNewBook"><h3>신간도서 알림</h3></a>
	<div class="row">
		<c:forEach items="${newBookList }" var="nBook">
			<div class="col-3 text-center" style="margin-bottom: 16px;">
				<div class="card" style="width: 13rem; margin: 0 auto;">
					 <a href="/book/bookDetail?bookCode=${nBook.bookCode }&memId=${sessionScope.loginInfo.memId}">
					 	<img src="/resources/images/book/${nBook.bkImg }"  alt="..." height="170px;"  >
					 </a>
					 <div class="card-body" style="padding:0.2rem 1.2rem;">
					    <h5 class="card-title">${nBook.title }</h5>
					    <p class="card-text"></p>
					 </div>
					</div>
				</div>
		</c:forEach>
	</div>

</body>
</html>