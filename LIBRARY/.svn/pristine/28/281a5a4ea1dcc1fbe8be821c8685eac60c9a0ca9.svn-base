/*유효성 검사*/
$('#joinForm').validate({
      debug: false,

      rules: {
		memId: {
			minlength: 5,
			maxlength: 12
		},
        memPwdCheck: { 
            equalTo: '#inputPwd'
         },
        memGender:{
			required: true
		}
      },
      messages: {
         memId: {
            minlength: '5자 이상 입력해 주셔야 해요.',           
            maxlength: '12자 이하로 입력해 주셔야 해요.'            
         },
         memPwdCheck: {
			equalTo: '위에 입력하신 비밀번호랑 일치하지 않아요😥'
		},
		 memGender:{
			required: '성별을 선택해 주세요'
		}
      },
      errorElement:'div',
      errorPlacement: function(error,element){
		error.insertAfter(element);
		error.css('color', 'red');
		error.css('font-size', '12px');
	  },
      submitHandler: function(form) {
         form.submit();   //유효성 검사를 통과시 전송
      }
   });

/*아이디 중복 체크 */
function checkId(){
const memId = document.getElementById('inputId').value;

$.ajax({
		url: '/member/checkId', //요청경로
		type: 'post',
		data: {'memId':memId}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			if(result === 1){
				$('.id-unavailable').css("display", "inline-block");
				$('.id-available').css("display", "none");
			}
			else if(result === 0) {
				$('.id-available').css("display", "inline-block");
				$('.id-unavailable').css("display", "none");
			}
			
		},
		error: function() {
			
			alert('실패');
		}
	});
}


/*비밀번호 확인*/
/*const inputPwd = document.getElementById('inputPwd');
const inputCheckPwd = document.getElementById('inputCheckPwd');
const checkPwdDiv = inputCheckPwd.nextSibling;

function samePwdCheck(){
	if(inputPwd.value !== inputCheckPwd.value){
		checkPwdDiv.innerText = "위와 같은 비밀번호를 입력해 주세요.";
	}
	else if(inputPwd.value === inputCheckPwd.value){
		checkPwdDiv.innerText = "비밀번호 확인 성공🥰	";
	
	}
}
inputCheckPwd.addEventListener("change", samePwdCheck);
*/
/*우편번호 api*/
function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("inputAddr").value = roadAddr;
            	}
      	  }).open();
      	  
    	}

    	