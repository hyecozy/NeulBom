<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.orderListContainerDiv{
	margin: 0 auto;
	width: 80%;
	text-align: center;
}
.orderListTb{
	margin: 0 auto;
	width: 100%;
}
.orderListTb tr td{
	border: 1px solid gray;
}
.orderListTb > thead tr td{
	border: none;
}
.searchDateDiv{
	margin-top: 30px;
	margin-bottom: 30px;
}
</style>
</head>
<body>
<div class="orderListContainerDiv">
	<div>주문조회</div>
	<div class="searchDateDiv">
		<input type="date">
		~ <input type="date">&nbsp;<button type="button" onclick="searchByDate();">조회</button>
	</div>
	<div>
		<table class="orderListTb">
			<thead>
				<tr>
					<td colspan="2">주문내역</td>
					<td>주문상태</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orderList }" var="order">
						<tr>
							<td colspan="3" style="text-align: left;">
								주문번호 : ${order.orderNum }<br>
								(${order.buyDate })
								<input type="hidden" name="buyDate" id="buyDate" value="${order.buyDate }">
							</td>
						</tr>
						
					<c:forEach items="${buyViewList }" var="buy">
						<c:if test="${order.orderNum eq buy.orderNum}">
							<tr>
								<td>
									<img alt="..." src="/resources/images/item/${buy.itemAtImgName }" 
										height="50px;" onclick="location.href='/item/itemDetail?itemCode=${buy.itemCode}';">
								</td>
								<td>
									<div onclick="location.href='/item/itemDetail?itemCode=${buy.itemCode}';">${buy.itemName }</div>
									<div>${buy.totalPrice } | ${buy.itemCnt }개</div>
								</td>
								<td>
									${buy.itemState }
								</td>
							</tr>
						</c:if>
					</c:forEach>
						<tr>
							<td colspan="3">
								<button type="button" onclick="location.href='/order/referOrderd?orderNum=${order.orderNum}';">주문상세보기</button>
							</td>
						</tr>
						<tr>
							<td style="height: 20px; border-left: none; border-right: none; border-bottom: none;" colspan="3"></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
	</div>
</div>
</body>
</html>