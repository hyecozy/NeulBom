/*버튼 0(Products)을 누르면  
0. 버튼0, 1 붙은 주황색 제거
0. 내용0,1,2 안보이게 하기
1. 버튼 0이 주황색으로 하이라이트가 되어야함
2. 내용 0이 보여야함*/

//함수 호출 반복문
for(let i = 0; i < $('.tab-button').length; i++){
    tabOpen(i); 
}

//함수에 보관
function tabOpen(e){
    $('.tab-button').eq(e).click(function(){
        $('.tab-button').removeClass('active');
        $('.tab-content').removeClass('show');
        $('.tab-button').eq(e).addClass('active');
        $('.tab-content').eq(e).addClass('show');
    });
}

function acceptance(clubCode, memId){
	let result = confirm('수락하시겠습니까?');
	
	if(result){
		
		$.ajax({
			url: '/clubAdmin/clubJoinAcceptance', //요청경로
			type: 'post',
			data: {'clubCode':clubCode, 'memId':memId}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				location.reload();
				
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
	}
}

function rejection(memId){
	let result = confirm('거절하시겠습니까?');
	
	if(result){
		$.ajax({
			url: '/clubAdmin/clubJoinRejection', //요청경로
			type: 'post',
			data: {'memId':memId}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				location.reload();
				
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
	}
	else{
		return;
	}
}

