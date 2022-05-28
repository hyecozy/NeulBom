function createClub(){
	let memId = document.getElementById('memId').value;
	let clubAdmin = document.getElementById('clubAdmin').value;
	let clubCode = document.getElementById('clubCode').value;
	
	if(memId == ''){
		alert('로그인이 필요합니다.');
		location.href = '/member/login';
	}
	else if(clubAdmin == 'Y'){
		alert('이미 모임을 생성 하였습니다.')
	}
	else if(clubCode != ''){
		alert('이미 모임에 가입되어있습니다.')
	}
	else{
		location.href = '/club/clubCreate';
	}
}

function clubJoin(clubCode){
	let memId = document.getElementById('memId').value;
	let club_Code = document.getElementById('clubCode').value;
	
	
	if(memId == ''){
		alert('로그인이 필요합니다.');
		location.href = '/member/login';
	}
	else if(club_Code != ''){
		alert('이미 모임에 가입되어있습니다.')
	}
	else{
		location.href = '/club/clubJoinWrite?clubCode=' + clubCode ;
	}
}

$(".open-msgModal").click(function(){
	var data = $(this).data('id');
    $("#messageModal.messageModal").val(data);
});

//메세지jsp에 id값 넘겨주기
function message(getId){
	location.href = '/club/getMsgList?getId=' + getId;
	
}


