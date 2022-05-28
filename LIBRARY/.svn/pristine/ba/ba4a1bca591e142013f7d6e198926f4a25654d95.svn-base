	alert('111');
function bookPlanerDelete(complitCode){
	if(confirm('삭제할까요?')){
		
		$.ajax({
				url: '/member/bookPlanerDelete', //요청경로
				type: 'post',
				data: {'complitCode':complitCode}, //필요한 데이터 '데이터이름':값
				success: function(result) {
					alert('삭제 되었습니다.');
				},
				error: function() {
					alert('실패');
				}
			});
		
	} else {
		history.back();
	}

}