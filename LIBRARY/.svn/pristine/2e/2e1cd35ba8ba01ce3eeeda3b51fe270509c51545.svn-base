<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	margin: 0 auto;
}
.subTitleDiv{
	margin-top: 100px;
	font-size: large;
	font-weight: bold;
}
.tels, .memTels{
	width: 60px;
}
</style>
</head>
<body>
<div class="container">
	<div>주문결제</div>
	<div>
		<table>
		<colgroup>
			<col width="25%">
			<col width="45%">
			<col width="10%">
			<col width="20%">
		</colgroup>
			<thead>
				<tr>
					<td colspan="2">상품명</td>
					<td>수량</td>
					<td>가격</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cartList }" var="item">
					<tr>
						<td>
							<img alt="..." src="/resources/images/item/${item.itemAtImgName}" height="100px">
						</td>
						<td>
							<div>${item.itemName }</div>
						</td>
						<td>
							<div>${item.itemCnt }</div>
						</td>
						<td>
							<div>${item.totalPrice }</div>
						</td>
					</tr>
				</c:forEach>
					<tr>
						<td colspan="3">
							<div>
								상품구매금액 : ${totalPrice }  + 배송비 0 (무료) = 합계 : 
							</div>
						</td>
						<td>
							<div>
								 ${totalPrice } 원 
							</div>						
						</td>
					</tr>
			</tbody>
		</table>
	</div>
	<div>
		<div class="subTitleDiv">주문자정보</div>
		<div>
			<table>
				<tr>
					<th>이름</th>
					<td>${mem.memName }</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
					   	<div class="col-sm-6">
							<div class="input-group mb-3">
							  <input type="text" class="form-control" name="memEmail" value="${fn:split(mem.memEmail,'@')[0]}">
							  <span class="input-group-text">@</span>
							  <input type="text" class="form-control" name="memEmail" value="${fn:split(mem.memEmail,'@')[1]}">
							  <input type="hidden" name="orderEmail" value="${mem.memEmail }">
							</div>
					    </div>
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<input type="text" class="tels" name="orderTels" value="${fn:substring(mem.memTell,0,3)}"> - 
						<input type="text" class="tels" name="orderTels" value="${fn:substring(mem.memTell,4,8)}"> - 
						<input type="text" class="tels" name="orderTels" value="${fn:substring(mem.memTell,9,13)}"> 
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<div class="subTitleDiv">배송정보</div>
		<div>
			<input type="checkbox" id="chk" onclick="eqAddr();"> 위 정보와 같음
			<table>
				<tr>
					<th>이름</th>
					<td>
						<input type="text" name="memName" id="memName">
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<input type="text" name="memTels" class="memTels"> - 
						<input type="text" name="memTels"  class="memTels"> - 
						<input type="text" name="memTels"  class="memTels"> 
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<div>
							<input type="text"><button>우편번호</button><br>
							<input type="text" name="memAddr"> <input type="text" name="memAddr">
						</div>
					</td>
				</tr>
				<tr>
					<th>
						<div>배송메세지</div>
						<div>(100자내외)</div>
					</th>
					<td>
						<textarea rows="" cols=""></textarea>
						<br>0/200 bytes (* 영문/숫자 기준 200자, 한글 기준 자까지 입력 가능합니다.)
					</td>
				</tr>
				<tr>
					<th>무통장 입금자명</th>
					<td>
						<input type="text" name="acName">(주문자와 같은 경우 생략가능)
					</td>
				</tr>
			</table>
			<div>
				<input type="checkbox" id="chkAddr" onclick="turnAddr();">
				해당 배송지 정보를 나의 회원정보로 등록합니다.
			</div>
		</div>
	</div>
	<div>
		<div class="subTitleDiv">
			결제예정금액	
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<td>상품금액</td>
						<td></td>
						<td>배송비</td>
						<td></td>
						<td>결제예정금액</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${totalPrice }</td>
						<td> + </td>
						<td>무료</td>
						<td> = </td>
						<td>${totalPrice }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div>
		<div class="subTitleDiv">결제정보</div>
		<div>
			<table>
				<tr>
					<th>결제방법</th>
					<td>
						<input type="radio" name="payCode" value="신용카드">신용카드<br>
						<input type="radio" name="payCode" value="카카오페이">카카오페이<br>
						<input type="radio" name="payCode" value="무통장입금">무통장입금
							<select>
								<option>입금계좌번호</option>
							</select>
					</td>
				</tr>
				<tr>
					<th>증빙신청</th>
					<td>
						<div>
							<input type="radio">신청안함
							<input type="radio">현금영수증
						</div>
						<div>
							<select>
								<option>핸드폰번호</option>
								<option>국세청현금영수증카드</option>
								<option>사업자번호</option>
							</select>
							<div>
								<input type="text">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						· 선택된 입금계좌로 인터넷 뱅킹, 은행 방문 등을 통해 입금해 주세요.<br> 
						· 반드시 입금 기한 내에 정확한 결제금액을 입금해 주세요.
					</td>
				</tr>
			</table>
		</div>
		<div>
			<div>
				<input type="checkbox">
				&nbsp; 상기 결제정보를 확인하였으며, 구매진행에 동의합니다.
			</div>
			<div>
				<table>
					<tr>
						<td>최종 결제금액</td>
						<td>
							<span>${totalPrice }</span>원
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
	<div>
		<button>주문하기</button>
		<button type="button" onclick="location.href='/cart/cartView';">취소하기</button>
	</div>
</div>
</body>
</html>