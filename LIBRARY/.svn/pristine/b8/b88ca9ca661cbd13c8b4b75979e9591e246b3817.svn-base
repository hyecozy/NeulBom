
function limitBrCnt(){
	
	alert('대여권수가 5권을 초과할 수 없습니다.');
}

function limitOverdue(){
	
	alert('연체이력으로 대여할 수 없습니다.');
}


/////////////////// 마이페이지 예약 목록////////////////////

//모달창 띄우기
function showModal(selectedTag){
	//memId
	var memId = $('#cancleRsv #memId').val();
	//isbn
	var isbn = $(selectedTag).closest('tr').children().eq(2).text();

	$('#cancleReserve #originMemId').val(memId);
	$('#cancleReserve #originIsbn').val(isbn);
	

	$('#cancleReserve').modal('show');
}	
	
function cancleRsv(){
	var memId = $('#cancleReserve #originMemId').val();
	var isbn = $('#cancleReserve #originIsbn').val();
	
	location.href='/member/cancleReserve?memId='+memId+'&isbn='+isbn;
	
}

$('#closeModalBtn').on('click', function(){
$('#cancleReserve').modal('hide');
console.log("click close");
});
//모달 창 뜰 떄 사전 작업
$('#cancleReserve').on('show.bs.modal', function (e) {
	console.log("show.bs.modal");
});
$('#cancleReserve').on('shown.bs.modal', function (e) {
console.log("shown.bs.modal");
});

//모달창 닫힐 떄 실행 코드
$('#insertBorrow').on('hidden.bs.modal', function (e) {
	$('#insertBorrow input').val('');
});

