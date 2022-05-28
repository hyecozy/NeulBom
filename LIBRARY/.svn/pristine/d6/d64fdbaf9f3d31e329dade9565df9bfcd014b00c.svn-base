
//검색
$(document).on('click', '#button-addon2' , function() {
	
		var keyword = $('#keyword').val();
		
		location.href = '/admin/memberManage?keyword=' + keyword;	
		
	});
	
	// 알림전송내역 modal
	$(document).on('click', '#sendMsg' , function() {
		
		$('#adminMsgModal').modal('show');
		
	});
	
	// 알림전송내역 상세조회
	$(document).on('click', '.adminMsgDetail' , function() {
		
			var getId= $(this).children().eq(0).text();
			var sendDate = $(this).children().eq(2).text();
			var msgContent= $(this).children().eq(1).text();


			$('#getId').text(getId);
			$('#sendDate').text(sendDate);
			$('#msgContent').text(msgContent);
		
		$('#adminMsgModal').modal('hide');
		$('#adminMsgDetailModal').modal('show');
		
	});



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

/*function sendMsg(){
	var result = confirm('알림을 전송하시겠습니까?');
	var formTag = document.getElementById('sendMsg');
	
	if(result){
		formTag.submit();
	}
	
}*/

// 알림전송내역 모달

function sendMsgList(){
	$.ajax({
		url: '/admin/sendMsgList', 
		type: 'post',
		data: {}, 
		success: function(result) {
			var tbody =  document.querySelector('#adminMsgModalTable tbody');
			tbody.innerHTML = '';
			
			var str = '';
			$(result).each(function(index, item){
				
					str += '<tr class="adminMsgDetail">';
					str += '<td>'+ item.getId +'</td>';
					str += '<td class="msgDetail" style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden;"><span id="open-msgDetail" data-msgCode="'+ item.msgCode +'">'+ item.msgContent +'</span></td>';
					str += '<td style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">'+ item.sendDate +'</td>';
					str += '</tr>';
				
				
			});	
				$('#adminMsgModalTable tbody').prepend(str);
			
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
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
	
	
	
	
	
	
	
	