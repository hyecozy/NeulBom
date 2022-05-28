//제출 버튼$. 클릭 시 실행
$(document).ready(function (){
	$('#search').ready(function (){
		$.ajax({
			method: "GET",
			url: "https://dapi.kakao.com/v3/search/book",
			data: { query: $("#bookName").val()},
			headers: { Authorization: "kakaoAK49d660de95bf16b370f9e066ebaa0021"}
		})
		
		.done(function (res) {
			$('#coverimg').append("<img src='"+res.documents[0].thumbnail+"'/>");
			$('h5').append(res.documents[0].title);
			$('.card-text').append(res.documents[0].contents);
			$('.card-author').append(res.documents[0].authors);
			$('.card-publisher').append(res.documents[0].publisher);
		});
	});
});





/*$('#regHopeBook').validate({
	debug: false,
	
	rulses: {
		
		
	},
	
	messages: {
		
		
	},
	
	//유효성 실패 시 추가할 태그(default: label)
    errorElement:'div',
    //유효성 검사 실패 시 메세지 출력 방식
    errorPlacement: function (error, element){
		//element: 유효성 검사 실패한 태그 (input)
		//error: 검사 실패 시 자동 추가 되는 태크 
        error.insertAfter(element);  
     	error.css('color','red');
     	error.css('font-size','12px');
    },  
    //유효성 검사 성공 시 실행 
    submitHandler: function(form) {
       form.submit();   //유효성 검사를 통과시 전송
    }
	
	
});*/