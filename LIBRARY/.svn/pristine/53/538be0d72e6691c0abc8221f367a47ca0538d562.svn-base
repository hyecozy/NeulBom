<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <div class="container">
<h2>희망 도서 신청 폼</h2>
	<div class="row">
		<div class="col-6">
			<form action="/book/regHopeBook" method="post" id="regHopeBookForm">
			
			
				
				<div class="row">
				
				<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
				<input type="hidden" name="hopeCode" value="${hopeCode }">
					<div class="col">
						제목 <input type ="text" name="hopeName" id="hopeName" class="form-control" autocomplete="none"> <!--기록저장X -->
					</div>
				</div>
				<div class="row">
					<div class="col">
						저자 <input type ="text" name="hopeWriter" id="hopeWriter"  class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col">
						출판사 <input type ="text" name="hopePublisher" id="hopePublisher"  class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type = "submit" value="신청">
					</div>
				</div>
			</form>
		</div>
	
	</div>

</div>
 --%>

	<h2>도서 검색 실습 </h2>
	<div class="col-6">
		<form action="/book/searchHpBook" method="post" id="searchHpBook">
		
		<input id="bookName" type="text">
		<button id="search">검색</button>
		</form>
	</div>
	<div class="card-mb-3" style="max-width: 60%; border: none;">
	<div class="row g-0">
	<div class="col-md-4" id="coverimg"></div>
	<div class="col-md-8">
	<div class="card-body">
		<h5 class="card-title"></h5>
		<p class="card-author"></p>
		<p class="card-publisher"></p>
		<p class="card-text"></p>
	</div>
	</div>
	</div>
	</div>
	
<!-- jquery validation 사용 문법 로딩  -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/js/book/reg_hope_book.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</body>
</html>