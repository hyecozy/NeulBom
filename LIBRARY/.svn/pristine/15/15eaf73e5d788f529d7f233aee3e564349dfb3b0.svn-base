
function byteCheck(obj, maxByte){
	
	var str = obj.value;
    var str_len = str.length;


    var rbyte = 0;
    var rlen = 0;
    var one_char = "";
    var str2 = "";


    for(var i=0; i<str_len; i++)
    {
        one_char = str.charAt(i);
        if(escape(one_char).length > 4) {
            rbyte += 2;                                         //한글2Byte
        }else{
            rbyte++;                                            //영문 등 나머지 1Byte
        }
        if(rbyte <= maxByte){
            rlen = i+1;                                          //return할 문자열 갯수
        }
     }
     if(rbyte > maxByte)
     {
        // alert("한글 "+(maxByte/2)+"자 / 영문 "+maxByte+"자를 초과 입력할 수 없습니다.");
        alert("메세지는 최대 " + maxByte + "byte를 초과할 수 없습니다.")
        str2 = str.substr(0,rlen);                                  //문자열 자르기
        obj.value = str2;
        fnChkByte(obj, maxByte);
     }
     else
     {
        document.getElementById('byteInfo').innerText = rbyte;
     }	
}
//모달에 id값 넘겨주기
$(".open-msgModal").click(function(){
	var data = $(this).data('id');
    $("#get-name.form-control").val(data);
});

//
function sendMsg(){
	var result = confirm('알림을 전송하시겠습니까?');
	var formTag = document.getElementById('sendMsg');
	
	if(result){
		formTag.submit();
	}
	
}


function sendMsgList(){
	$.ajax({
		url: '/admin/sendMsgList', 
		type: 'post',
		data: {}, 
		success: function(result) {
			var modalBody =  document.querySelector('#msgModalToggle .modal-body');
			modalBody.innerHTML = '';
			
			var str = '';
			str += '<table class="table text-center table-hover" style="table-layout: fixed; ">';
			 str += '  <colgroup>                                                 ';
            str += '     <col width="10%">                                       ';
            str += '     <col width="*">                                       ';
            str += '     <col width="15%">                                         ';
            str += '     <col width="20%">                                       ';
			str += '<thead>';
			str += '<tr>';
			str += '<th scope="col">No</th>';
			str += '<th scope="col">내용</th>';
			str += '<th scope="col">회원ID</th>';
			str += '<th scope="col">전송날짜</th>';
			str += '</tr>';
			str += '</thead>';
			str += '<tbody>';
			
			for(var i = 0; i < result.length; i++){
				str += '<tr>';
				str += '<th scope="row">'+ 0 +'</th>';
				str += '<td style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden;"><span id="open-msgDetail" data-bs-target="#msgModalToggle2" data-bs-toggle="modal">'+ result[i].msgContent +'</sapn></td>';
				str += '<td>'+ result[i].getId +'</td>';
				str += '<td style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">'+ result[i].sendDate +'</td>';
				str += '</tr>';
			}
			str += '</tbody>';
			str += '</table>';
			
			modalBody.innerHTML = str;
			
			var modalTag = document.getElementById('msgModalToggle');
		 	var myModal = new bootstrap.Modal(modalTag);
			myModal.show();
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}

//모달에 id값 넘겨주기
/*$(".open-msgDetail").click(function(){
	var data = $(this).data('id');
    $("#get-get-msgCode.msgCode").val(data);
});*/

function sendMsgDetail(msgCode){
	
	var spanTag = document.getElementById('open-msgDetail');
	spanTag.innerHTML = '';
	
	var str1 = '';
	str1 += '<span id="open-msgDetail" data-bs-target="#msgModalToggle2" data-bs-toggle="modal">';
	
	
	/*$.ajax({
		url: '/admin/sendMsgDetail', 
		type: 'post',
		data: {'msgCode':msgCode}, 
		success: function(result) {
			var modalBody =  document.querySelector('#msgModalToggle2 .modal-body');
			modalBody.innerHTML = '';
			
		var str = '';
			str += '<table class="table">';
			str += '  <colgroup>                                                 ';
            str += '     <col width="25%">                                       ';
            str += '     <col width="25%">                                       ';
            str += '     <col width="25%">                                       ';
            str += '     <col width="25%">                                       ';
			str += '<tr>';
			str += '<th scope="col">회원ID</th>';
			str += '<td>'+ result.getId +'</td>';
			str += '<th scope="col">전송날짜</th>';
			str += '<td>'+ result.sendDate +'</td>';
			str += '</tr>';
			str += '<tr>';
			str += '<th scope="row">내용</th>';
			str += '<td colspan="4" style="word-break: break-all">'+ result.msgContent +'</td>';
			str += '</tr>';
			str += '</table>';
			
			modalBody.innerHTML = str;
			
			var modalTag = document.getElementById('msgModalToggle2');
		 	var myModal = new bootstrap.Modal(modalTag);
			myModal.show();
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});*/
}

//대여정보 id값
function borrowInfo(memId){
	location.href = '/admin/borrowInfo?memId=' + memId;
}

//페이징
function search(nowPage){
	document.getElementById('nowPage').value = nowPage;
	var formTag = document.getElementById('searchForm');
	formTag.submit();
}