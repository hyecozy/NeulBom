<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.QnaTB{
	margin: 0 auto;
	width: 100%;
	border: 1px solid gray;
}
.QnaTB tr th td{
	border: 1px solid gray;
}
textarea{
	resize: none;
}
</style>
</head>
<body>
<div>
	<form action="/otherB/regQna" method="post">
		<div>
			<table class="QnaTB">
				<tr>
					<th>문의내용</th>
					<td>
						<input type="text" name="qnaTitle" required>
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>이은빈
						<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
					</td>
					<th>비밀글유무</th>
					<td>
						<input type="radio" name="qnaIsPrivate" value="Y" onclick="location.href='/otherB/itemCateManage?isPw=Y';">예 &nbsp;
						<input type="radio" name="qnaIsPrivate" value="N">아니오
					</td>
				</tr>
				<tr>
					<th>
						문의상세내용
					</th>
				</tr>
				<tr>
					<td>
						<textarea rows="20" cols="100" name="qnaContent" ></textarea>
					</td>
				</tr>
			</table>
		</div>
		<div>
			<button type="submit">등록하기</button>
			<button type="button" onclick="location.href='/otherB/qnaBoard';">취소하기</button>
		</div>
	</form>
</div>
</body>
</html>