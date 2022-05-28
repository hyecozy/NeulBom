<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.complitBookList{
		margin: 6rem auto 0rem;
		width: 30rem;
	}
	.complitBookList > div{
		text-align: center;
		font-size: 1.2rem;
		height: 100%;
		vertical-align: middle;
		
	}
	.complitBookList > div:nth-child(1n){
		background-color: #FF8080; /* 붉은색 */
		border-radius: 5px;
	}
	.complitBookList > div:nth-child(2n){
		background-color: #FFF7BC; /* 노란색 */
		border-radius: 2px;
		position: relative;
		right: 40px;
	}
	.complitBookList > div:nth-child(3n){
		background-color: #C0EDA6; /* 연두색 */
		border-radius: 10px;
		position: relative;
		left: 30px;
		
	}
	button {
		margin-top: 1rem;
		padding: 2px 7px;
		background-color: #FDFAF6;
		color: #02475E;
		text-align: center;
		width: 8rem;
		border-radius: 6px;
		cursor: pointer;
		font-size: 1rem;
	}
	.bookPlaner-empty{
		width: 20rem;
		height: 5rem;
		background-color: #eeeeee;
	}
	.bookPlaner-top{
		display: flex;
		justify-content: space-around;
	}
	
</style>
</head>
<body>
<div class="pageName">
독서 플래너 <button onclick="location.href='/member/bookPlanerForm';">기록하기</button>
</div>
<div class="bookPlaner-top">
	<div class="bookPlaner-top-left">
		내 취향 살펴보기
	</div>
	<div class="bookPlaner-top-right">
		TO READ LIST
		<ul>
			<li>칵테일, 러브, 좀비</li>
			<li>쇼코의 미소</li>
		</ul>
	</div>
</div>
<div class="complitBookList">
<c:choose>
	<c:when test="${empty complitBookList }">
		<div class="bookPlaner-empty">
			${loginInfo.memName }님의 첫 번째 완독 도서를 등록해 보세요!
		</div>
	</c:when>
	<c:otherwise>
		<c:forEach items="${complitBookList }" var="complitBook">
			<div style="height: ${complitBook.bookInfo.bkPage}rem;"
				onclick="location.href='/member/bookPlanerDetail?memId=${loginInfo.memId}&bookCode=${complitBook.bookCode }&complitCode=${complitBook.complitCode }';">
				
				${complitBook.bookInfo.title }
			</div>
		</c:forEach>
	</c:otherwise>
</c:choose>

</div>

</body>
</html>

