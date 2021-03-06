<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.btnDiv{
	padding-top:10px;
	padding-left:25px;
	padding-right:10px;
	text-align:right;
}

.btnDiv button{
		height: 40px;
		padding-left: 10px;
		padding-right: 10px;
		width: 150px;
}
.monthlyBookForm{
	width: 100%;
	padding: 20px;
	border: 1px solid #dddddd;
}

.monthlyBookForm table {
	width: 100%;
	padding: 15px;
}
.monthlyBookForm button{
	margin-left: 15px;
	height: 40px;
}
 .monthlyBookForm .form td:first-child{
	font-weight:600;
	width:10%;
}
.monthlyBookForm td, .monthlyBookForm tr{
	padding:15px;
	
} 
.monthlyBookForm input {
	height: 40px;
	width:40%;
	border-radius: 3px;
}
.resultHopeBook .result-row-tbody1 div{
	height: 90px;
	width:25%; 
	display: inline-block;
	text-align: center;
	padding-top: 40px;
	
}
.resultHopeBook .result-row-tbody1 .img{
	padding-top: 0px;
	padding-bottom: 20px;
}

.resultHopeBook{
	width: 100%;
	border:1px solid #dddddd;
	margin: 0 auto;
}
.resultHopeBook.result-row-thead{
	flex-direction: row; 
	dispaly: flex;
	padding: 20px;
	border-bottom: 1px solid #dddddd;
}

.resultHopeBook .result-row-tbody{
	padding: 20px;
}
.resultHopeBook .result-row-tbody1{
	border-bottom: 1px solid #dddddd;
	padding-bottom: 10px;
}

.searchBar{
text-align: center;
border: 1px solid #dddddd;
padding: 10px;
background-color: #E7EDE4;
margin-bottom: 20px;
	
}

.searchBar input{
	outline: 3px solid #16784B;
	border: 1px solid #16784B;
	border-radius: 3px;
	width: 50%;
	height: 50px;
	margin-left: 10px;
	margin-top:10px;
}
.searchBar  button{
	position: relative;
    border: none;
    display: inline-block;
    padding: 13px 30px;
    margin-left: 10px;
}
select{
   border: none;
   outline: none;
   width: 80px;
   font-weight: 200;
   background: transparent;
   color: black;
}

.active{
	background-color: #dddddd;
}
.modal{
	text-align: center;
}
#searchBook .modal-content {
	max-height: 800px;
	width: 800px;
}
.subTit {
    border-bottom: 1px solid #dddddd;
    padding: 15px 0px 15px 0px;
    margin: 0 auto; 
    margin-bottom: 20px;
}
</style>
</head>
<body>
<div class="container">
	<div class="subTit" >
			  <h2>????????? ?????? ??????</h2>
		</div>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	   <form action="/clubAdmin/UpdateMonthlyBook" id ="monthlyBookFormUpdate" method="post">
			<input type="hidden" name="clubCode" value="${sessionScope.loginInfo.clubCode }">
			<div class="monthlyBookForm">
				<table class="form">
				<tr>
					<td>??????</td>
					<td><input type="text" name="mbTitle" value="${monthlyBk.mbTitle }">
						<button type="button" data-toggle="modal" data-target="#searchBook" class="btn btn-success btn-sm justify-content-md-end" onclick="showModal();">??? ????????????</button>
					</td>
				</tr>
				<tr>
					<td>??????</td>
					<td><input type="text"  name="mbWriter" value="${monthlyBk.mbWriter }"></td>
				</tr>
				<tr>
					<td>?????????</td>
					<td><input type="text"  name="mbPublisher" value="${monthlyBk.mbPublisher }"></td>
				</tr>
				<tr>
					<td>??????</td>
					<td><input type="text"  name="mbThumbnail" value="${monthlyBk.mbThumbnail }"></td>
				</tr>
			</table>
		</div>
		<div class="btnDiv">
			<button class="btn btn-success btn-sm justify-content-md-end" onclick="submit();" >????????????</button>
				</div>
			</form>
			
		
	<div class="modal fade" id="searchBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog modal-lg" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="myModalLabel">?????? ??????</h5>
		      </div>
		      <div class="modal-body">
				<div class="searchBar">
					<select id="searchSub">
						<option value="title">??????</option>
						<option value="writer">??????</option>
					</select>
					<input id="bookName" type="text">
					<button id="search" class="btn btn-success btn-sm justify-content-md-end">??????</button>
				</div>		
						
				<div class="resultHopeBook">
					<div class="result-row-thead" >
						<table style="width:100%; text-align: center; ">
					<tr>
						<td>??????</td>
						<td>??????</td>
						<td>??????</td>
						<td>?????????</td>
					</tr>
				</table>
			</div>
			<div class="result-row-tbody" id ="result-row-tbody" style="overflow:scroll; height:200px; flex-direction: row; dispaly: flex;">
				 <div class="result" id ="result" ></div> 
			</div>
			
			
		</div>
	     </div>
	     <div class="modal-footer">
	       <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">??????</button>
	       <button type="button" id="searchForm" class="btn btn-success justify-content-md-end" >??????</button>
	     </div>
	   </div>
	 </div>
	</div>	
</div>

<script type="text/javascript" src="/resources/js/club/update_club_monthly_book.js?ver=1"></script>
</body>
</html>