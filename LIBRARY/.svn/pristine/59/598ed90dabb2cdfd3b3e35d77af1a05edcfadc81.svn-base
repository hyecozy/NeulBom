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
.col-3{
	margin-bottom: 16px;
}
.itemList{
	margin: 0 auto;
	width: 100%;
	height: 100vh;
}
.cateDiv{
	margin: 0 auto;
	text-align: center;
	margin-bottom: 30px;
}
.searchItemDiv{
	margin: 0 auto;
	margin-bottom: 20px;
	text-align: center;
}
input{
	width: 300px;
}
</style>

</head>
<body>
<button onclick="location.href='/item/itemManage';">아이템관리</button><br>
<button onclick="location.href='/item/itemCateManage';">아이템카테고리관리</button><br>
<button onclick="location.href='/cart/cartView';">장바구니가기</button><br>
<button onclick="location.href='/buy/buyPage';">구매하기</button><br>
<button onclick="location.href='/order/orderList';">구매내역조회</button><br>
	<button type="button" onclick="location.href='/sales/orderStateManage';">주문내역조회(관리자)</button>

<div class="searchItemDiv">
	<form action="/item/searchItem" method="post">
	  <input type="text" name="keyword" id="keyword" required>
	  <button type="submit">검색</button>
	</form>
</div>

<div class="cateDiv">
	<span onclick="location.href='/item/itemList';"> 전체보기 </span>  &nbsp;
	<c:forEach items="${cateList}" var="cate">
		<span onclick="cateItem('${cate.cateCode}');">${cate.cateName }</span> &nbsp;
	</c:forEach>
</div>
<div class="row itemList">
	<c:forEach items="${itemList }" var="item">
		<div class="col-3 text-center">
			<div>
				<a href="/item/itemDetail?itemCode=${item.itemCode }">
					<img alt="..." src="/resources/images/item/${item.itemAtImgName }" height="250px;">
				</a>
			</div>
			<div onclick="location.href='/item/itemDetail?itemCode=${item.itemCode}';">
				<span class="itemName" >${item.itemName }</span><br>
				<fmt:formatNumber value="${item.itemPrice }" pattern="\#,###"/>
			</div>
			<div>
			</div>
		</div>
	</c:forEach>
</div>
<script src="\resources\js\item\item_list.js?ver=1" type="text/javascript" ></script>
</body>
</html>