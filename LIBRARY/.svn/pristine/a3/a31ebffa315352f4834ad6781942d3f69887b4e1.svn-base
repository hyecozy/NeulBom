<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.sideBodyDiv{
		display: flex;
		justify-content: center;
	} 
	.sideBodyDiv nav{
		width: 30%;
	}
	.sideBodyDiv article{
		width: 60%;
	}
	
	table, tr, td{
		border-collapse: collapse;
		border: 1px solid black;
	}
	.myPageDiv{
		width: 85%;
		margin: 0px auto;
	}
	.myPageLeftDiv{
		display: flex;
		flex-direction: column;
	}
	
	.myPage-simple{
		border: 1px solid black;
		display: flex;
		flex-direction: column;
	}
	.myPage-simple img{
		width: 100%;
	}
</style>
</head>
<body>
<div class="container">
	<div class="pageName">
		마이페이지
	</div>
	<div class="myPageDiv">
		<div class="myPageLeftDiv">
		
			<div class="myPage-simple">
				<div>
					<img alt="" src="/resources/images/member/profile_sample.jpg">
				</div>
				<div>
				${memberInfo.memName }님
				대출정보</div>
			</div>
				<table>
					<tr>
						<td>
							<a href="/member/myPageDetail?memId=${sessionScope.loginInfo.memId}">
						내 정보 상세조회</a></td>
					</tr>
					<tr>
						<td>
						<a href="/member/reserveListDetail?memId=${sessionScope.loginInfo.memId }">
						대출목록 상세조회
						</a>
						</td>
					</tr>
					<tr>
						<td><a>구매목록 상세조회</a></td>
					</tr>
					<tr>
						<td><a>독서 플래너</a></td>
					</tr>
					<tr>
						<td><a>북클럽 조회</a></td>
					</tr>
				</table>
			<div>
				
			</div>
		</div>
	</div>
</div>
</body>
</html>