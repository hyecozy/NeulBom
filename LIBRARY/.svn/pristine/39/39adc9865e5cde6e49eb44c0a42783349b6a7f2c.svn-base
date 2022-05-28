


function updateCmt(tag, memId, cbCmtNum, clubCode, cbBoardNum, cbCmtContent){
	
				
	var str1 = '';
	var str2 = '';
	
	str1 += '<form action="/club/clubCmtUpdate" method="post" id="updateForm">';
	str1 += '<input type="hidden" name="memId" value="'+ memId +'">';
	str1 += '<input type="hidden" name="cbCmtNum" value="'+ cbCmtNum +'">';
	str1 += '<input type="hidden" name="clubCode" value="'+ clubCode +'">';
	str1 += '<input type="hidden" name="cbBoardNum" value="'+ cbBoardNum +'">';
	str1 += '<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="cbCmtContent" style="resize: none;">'+ cbCmtContent +'</textarea>';
	str1 += '</form>'
	
	str2 += '<button type="button" class="btn btn-primary btn-sm justify-content-md-end" onclick="updateCmtComplete();" style="margin-top: 5px;">수정완료</button>';
	
	tag.closest('div').previousElementSibling.innerHTML = str1;
	tag.closest('div').innerHTML = str2;
	
}

function updateCmtComplete(){
	
	var updateForm = document.getElementById('updateForm');
	updateForm.submit();
	
}

function deleteCmt(memId, cbCmtNum){
	
	let result = confirm('댓글을 삭제하시겠습니까?');
	
	if(result){
		$.ajax({
			url: '/club/deleteCbCmt', //요청경로
			type: 'post',
			data: {'memId':memId, 'cbCmtNum':cbCmtNum}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				location.reload();
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
			}
		});
	}
	else{
		return;
	}
}