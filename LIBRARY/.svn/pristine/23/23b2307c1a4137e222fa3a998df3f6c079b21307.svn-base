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

//모달창 닫기
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


//제출 버튼$. 클릭 시 실행
$(document).ready(function (){
	$('#search').click(function (){
		
		var searchTxt = $('#bookName').val();
		alert(searchTxt);
		$.ajax({
			method: 'GET',
			url: "https://dapi.kakao.com/v3/search/book?target=title",
			data: { query: searchTxt },
			headers: {Authorization: "KakaoAK 9ac7c779abb75c8cf021af960faffa9e"},
		})
		
			.done(function(msg){
				var i;
				for(i=0;i<10;i++){

					console.log(msg.documents[i]);
					var authors =msg.documents[i].authors.join();
					$('#coverimg').append("<strong>"+msg.documents[i].title+"</strong>");
					$('#title').append("<img src='"+msg.documents[i].thumbnail+"'/>");
					$('#writer').append(authors);
					$('#publisher').append(msg.documents[i].publisher);
				}
				
			});
				
			});
	/*	})
		
		.done(function (res) {
			$('#coverimg').append("<img src='"+res.documents[0].thumbnail+"'/>");
			$('h5').append(res.documents[0].title);
			$('.card-text').append(res.documents[0].contents);
			$('.card-author').append(res.documents[0].authors);
			$('.card-publisher').append(res.documents[0].publisher);
		});
	});*/
});