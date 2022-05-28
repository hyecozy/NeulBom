<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.itemlist_container{
	width:75%;
	margin: 0 auto;
	margin-top: 30px;
	font-size: 17px;
}
.col-3{
	margin-bottom: 16px;
}
.itemList{
	margin: 0 auto;
	width: 100%;
	height: 100vh;
}
.itemName{
	font-weight: bold;
}
.cateDiv{
	margin: 0 auto;
	margin-top: 50px;
	text-align: center;
	margin-bottom: 30px;
	color: #41764F;
	font-weight: bold;
	font-size: 20px;
}

input{
	width: 300px;
}

.searchContainer{
	margin: 0 auto;
	text-align: center;
}
.searchDiv{
   display: inline-block; 
   border: 2px solid #41764F; 
   border-radius: 48px; 
   width: 450px; 
   height: 45px; 
   text-align: center;
}
.searchDiv input[type="text"]{
   width: 350px; 
   height: 40px; 
   vertical-align: middle; 
   border: none; 
   outline: 0;
}

</style>

</head>
<body>
<div class="nonSide-container">

<div class="itemlist_container">
	<div class="searchContainer">
		<div class="searchDiv">
			<form action="/item/searchItem" method="post" id="searchForm1">
		      <span>
		         <input type="text" name="keyword" id="searchText" onkeydown="if (event.keyCode == 13) { search(); }"> 
		         <span onclick="search();" style="cursor: pointer;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
		              <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
		        </svg></span>
		      </span>
			</form>
	    </div>
	</div>
	
	
	<div class="cateDiv">
		<span onclick="location.href='/item/itemList';"> 전체보기 </span>  &nbsp;
		<c:forEach items="${cateList}" var="cate">
			<span onclick="cateItem('${cate.cateCode}');">${cate.cateName }</span> &nbsp;
		</c:forEach>
	</div>
		<div class="row itemList">
			<c:forEach items="${itemList }" var="item">
				<div class="col-3 text-center itembox">
					<div>
						<a href="/item/itemDetail?itemCode=${item.itemCode }">
							<img alt="..." src="/resources/images/item/${item.itemAtImgName }" width="95%;" height="300px;" style="border-radius: 8px; border: 1px solid #CCCDCD;">
						</a>
					</div>
					<div onclick="location.href='/item/itemDetail?itemCode=${item.itemCode}';">
						<span class="itemName" >${item.itemName }</span><br>
						<fmt:formatNumber value="${item.itemPrice }" pattern="#,###"/> <span style="font-size: medium;">원</span>
					</div>
					<div>
					</div>
				</div>
			</c:forEach>
		</div>
</div>
<div class="pageDiv col-4" style=" margin:0 auto;">
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-sm justify-content-center">
				<li class="page-item <c:if test="${!itemVO.prev }">disabled</c:if>">
				<a class="page-link" href="/item/itemList?nowPage=${itemVO.beginPage - 1 }"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="${itemVO.beginPage }" end="${itemVO.endPage }" var="pageIndex">
						<li class="page-item <c:if test="${itemVO.nowPage eq pageIndex }">active</c:if>"><a class="page-link" 
						href="/item/itemList?nowPage=${pageIndex }">${pageIndex }</a></li>
					</c:forEach>
				<li class="page-item <c:if test="${!itemVO.next }">disabled</c:if>">
				      <a class="page-link" href="/item/itemList?nowPage=${itemVO.endPage + 1 }" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				</li>
			</ul>
		</nav>
	</div>
</div>
<script type="text/javascript">
	function search(){
		const searchForm = document.getElementById('searchForm1');
		searchForm.submit();
	}
</script>
<script src="\resources\js\item\item_list.js?ver=5" type="text/javascript" ></script>
</body>
</html>