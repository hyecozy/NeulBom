function clubBoardRegCmt(memId, cbBoardNum){
	console.log()
	
	var data = {
		'memId':memId,
		'cbBoardNum':cbBoardNum
		, 'cbCmtContent': $("#cbCmtContent").val()
		
	}
	
	$.ajax({
		url: '/club/clubBoardRegCmt', //요청경로
		type: 'post',
		data: {'data':JSON.stringify(data)}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성
			alert('성공');
			var comment = document.querySelector('#cmtDiv');
			comment.innerHTML = '';
			
			var str = '';
			str += '<div>'
			for(var i = 0; i < result.length; i++){
				str += result[i]+ClubBoardCmtVO.memName
				str += result[i]+ClubBoardCmtVO.cbCmtDate
				str += result[i]+ClubBoardCmtVO.cbCmtContent
			}
			str += '</div>'
			str += '<div>'
			str += '<input type="submit" value="수정">'
			str += '</div>'
			comment.innerHTML = str;
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}