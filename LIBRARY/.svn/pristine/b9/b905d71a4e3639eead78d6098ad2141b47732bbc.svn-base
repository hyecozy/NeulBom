function showModal(selectedTag){
	
	var isbn = $(selectedTag).closest('tr').children().eq(3).text();
	var memId = $(selectedTag).closest('tr').children().eq(1).text();
	var brCode = $(selectedTag).closest('tr').children().eq(0).text();
	
	$('#returnBook #originIsbn' ).val(isbn);
	$('#returnBook #originBrCode' ).val(brCode);
	$('#returnBook #originMemId' ).val(memId);
	
	$('#returnBook').modal('show');
	
}

function returnBook(){
	var isbn = $('#returnBook #originIsbn').val();
	var brCode = $('#returnBook #originBrCode').val();
	var memId = $('#returnBook #originMemId').val();
	
	
	
	
	/*let f = document.createElement('form');
	
	let obj;
	obj = document.createElement('input');
	obj.setAttribute('type','hidden');
	obj.setAttribute('name','isbn');
	obj.setAttribute('value',isbn);
	
	obj = document.createElement('input');
	obj.setAttribute('type','hidden');
	obj.setAttribute('name','memId');
	obj.setAttribute('value',memId);
	
	obj = document.createElement('input');
	obj.setAttribute('type','hidden');
	obj.setAttribute('name','brCode');
	obj.setAttribute('value',brCode);
	
	f.appendChild(obj);
	f.setAttribute('method','post');
	f.setAttribute('action','/book/returnBook');
	document.body.appendChild(f);
	f.submit();*/
	
	
	location.href = '/book/returnBook?isbn='+isbn+'&brCode='+brCode+'&memId='+memId;
	alert('반납되었습니다.');
	
/*	var formTag = document.getElementById('rtBook');
	formTag.submit();
	
	*/
}


$('#closeModalBtn').on('click', function(){
$('#returnBook').modal('hide');
console.log("click close");
});
$('#returnBook').on('show.bs.modal', function (e) {
console.log("show.bs.modal");
});
$('#returnBook').on('shown.bs.modal', function (e) {
console.log("shown.bs.modal");
});
$('#returnBook').on('hide.bs.modal', function (e) {
console.log("hide.bs.modal");
});
$('#returnBook').on('hidden.bs.modal', function (e) {
console.log("hidden.bs.modal");
});




	


/*var rsvCode="";
var mem*/