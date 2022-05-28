<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-12">
				<div class="row">
					<input type="hidden" name="ntCode" value="${ntCode }">
					<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
					<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
					<div class="col">
						제목 <input type ="text" name="ntTitle" value="${ntBoardInfo.ntTitle }" class="form-control" autocomplete="none"> <!--기록저장X -->
					</div>
					<div class="col">
						시간 ${ntCreateDate }
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						내용 <textarea rows="5" cols="50" name="ntContent" >${ntBoardInfo.ntContent }</textarea>
					</div>
				</div>
				<div class="row">
					<div class="col">
					<input type="submit" value="수정" onclick="location.href='updateNtBoardDetail'">
					</div>
				</div>
		</div>
	
	</div>

</div>
</body>
</html>