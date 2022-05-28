/*!!!!!!!!!!!!!!!!!! 연체 도서 반납 !!!!!!!!!!!!!!!!!!*/
function showModalOD(selectedTag){
	
	
	var brCode = $(selectedTag).closest('tr').children().eq(0).text();
	var memId = $(selectedTag).closest('tr').children().eq(1).text();
	var isbn = $(selectedTag).closest('tr').children().eq(3).text();
	var rtDate = $(selectedTag).closest('tr').children().eq(5).text();
	
	var nowDate = new Date();
	var rtDateT =new Date(rtDate);

	var limitDay = Math.floor((nowDate.getTime() - rtDateT.getTime())/(1000*60*60*24));
	
	var limit = new Date(nowDate);
	limit.setDate(nowDate.getDate()+limitDay);
	
	var limitYear = limit.getFullYear();
	var limitMonth = ('0'+(limit.getMonth()+1)).slice(-2);
	var limitDate = ('0'+limit.getDate()).slice(-2);
	
	var limitDate = limitYear +'-'+ limitMonth +'-'+ limitDate;
	
	alert('연체일은 총 '+limitDay+'일입니다.\n 대출가능일은 '+limitDate+'입니다.');

	
	$('#returnOverdue #originBrCode' ).val(brCode);
	$('#returnOverdue #originMemId' ).val(memId);
	$('#returnOverdue #originIsbn' ).val(isbn);
//	$('#returnOverdue #originRtDate' ).val(rtDate);
	$('#returnOverdue #originLimitDate').val(limitDate);
	
	$('#returnOverdue').modal('show');
	
}	

function returnOverdue(){
	var originIsbn = $('#returnOverdue #originIsbn').val();
	var originBrCode = $('#returnOverdue #originBrCode').val();
	var originMemId = $('#returnOverdue #originMemId').val();
//	var originRtDate = $('#returnOverdue #originRtDate').val();
	
	var originLimitDate = $('#returnOverdue #originLimitDate').val();
	alert(originLimitDate);
	
/*	var nowDate = new Date();
	var originRtDateT =new Date(originRtDate);

	var limitDay = Math.floor((nowDate.getTime() - originRtDateT.getTime())/(1000*60*60*24));
	
	var limit = new Date(nowDate);
	limit.setDate(nowDate.getDate()+limitDay);
	
	var limitYear = limit.getFullYear();
	var limitMonth = limit.getMonth()+1;
	var limitDate = limit.getDate();
	
	var limitDate = limitYear +'-'+ limitMonth +'-'+ limitDate;*/
	
	var originLimitDate = $('#returnOverdue #originLimitDate').val();
	
//	alert('연체일은 총 '+limitDay+'일입니다.\n 대출가능일은 '+limitDate+'입니다.');
	
	
	location.href = '/book/returnOverdue?isbn='+originIsbn+'&brCode='+originBrCode+'&memId='+originMemId+'&limitDate='+originLimitDate;
	
}
$('#closeModalBtnOD').on('click', function(){
$('#returnOverdue').modal('hide');
console.log("click close");
});
$('#returnOverdue').on('show.bs.modal', function (e) {
console.log("show.bs.modal");
});
$('#returnOverdue').on('shown.bs.modal', function (e) {
console.log("shown.bs.modal");
});
$('#returnOverdue').on('hide.bs.modal', function (e) {
console.log("hide.bs.modal");
});
$('#returnOverdue').on('hidden.bs.modal', function (e) {
console.log("hidden.bs.modal");
});




	


/*var rsvCode="";
var mem*/