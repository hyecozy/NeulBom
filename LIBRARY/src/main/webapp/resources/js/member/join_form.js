/*아이디 중복 체크
by 혜수
22-06-07 23:22
중복 아이디 입력 시, set input value ''
*/
let isCheckIdVal = document.querySelector('#joinForm button').value;
function checkId(){
const newId = document.getElementById('inputId1');
$.ajax({
		url: '/member/checkId', //요청경로
		type: 'post',
		data: {'memId':newId.value}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			if(result === 1){
				$('.id-unavailable').css("display", "inline-block");
				$('.id-available').css("display", "none");
				newId.value = '';							
			}
			else if(result === 0) {
				$('.id-available').css("display", "inline-block");
				$('.id-unavailable').css("display", "none");
				isCheckIdVal = 'Y';
			}
			
		},
		error: function() {
			
			alert('실패');
		}
	});
}
/*아이디 중복 체크를 했는지 확인
by 혜수
22-06-11 14:49
중복확인 버튼을 눌렸다면 value='Y' 안눌렸다면 'N'
'Y'일시 회원가입 버튼 타입 submit으로 바뀜
'N'일시 회원가입 버튼 타입 그대로 button이며 안내 alert
 */
function isCheckId(){
	if(isCheckIdVal === 'N'){
		alert('아이디 중복을 확인해 주세요.');
	}
	else{
		$('#joinBtn').attr('type', 'submit');
	}
}
document.getElementById('joinBtn').addEventListener('click', isCheckId);

/*유효성 검사
by 혜수
22-06-06 23:23
memPwd 유효성 검사 수정 ('영문,숫자,특문 포함' 조건 추가)
*/

$.validator.addMethod('pwdChk', function(value, element){
	return this.optional(element)||/^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);
});
$('#joinForm').validate({
	debug: false,
	groups:{
		username1: 'memTell1 memTell2',
		username2: 'memEmail1 memEmail2'
	},
	rules: {
		memId: {
		required: true,
		minlength: 5,
		maxlength: 12
		},
		memPwd:{
		required: true,
		pwdChk: true
		},
		memPwdCheck: { 
		required: true,
        equalTo: '#inputPwd'
         },
		memName: {
		required: true
		},
		memBirth: {
		required: true
		},
		memGender:{
		required: true
		},
		memTell1: {
		digits: true,
		required: true,
		minlength: 3,
		maxlength: 4
		},
		memTell2:{
		digits: true,
		required: true,
		minlength: 4,
		maxlength: 4
		},
		memEmail1:{
		required: true
		},
		memEmail2:{
		required: true
		},
		memAddr:{
		required: true
		}
      },
	messages: {
		memId: {
		required: '필수 입력 항목입니다.',
        minlength: '5자 이상 입력해 주셔야 해요.',           
        maxlength: '12자 이하로 입력해 주셔야 해요.'
        },
        memPwd: {
		required: '필수 입력 항목입니다.',
		pwdChk: '영문, 숫자, 특수문자를 포함해야 합니다.'
		},
		memPwdCheck: {
		required: '필수입력 항목입니다.',
		equalTo: '위에 입력하신 비밀번호랑 일치하지 않아요😥'
		},
		memName:{
		required: '필수입력 항목입니다.',
		},
		memBirth: {
		required: '필수입력 항목입니다.'
		},
		memGender:{
		required: '필수입력 항목입니다.'
		},
		memTell1: {
		digits: '올바른 전화번호 표기 형식이 아닙니다.',
		required: '필수입력 항목입니다.',
		minlength: '3~4자리의 숫자를 입력해 주세요.',
		maxlength: '4자리의 숫자를 입력해 주세요.'
		},
		memTell2: {
		digits: '올바른 전화번호 표기 형식이 아닙니다.',
		required: '필수입력 항목입니다.',
		minlength: '3~4자리의 숫자를 입력해 주세요.',
		maxlength: '4자리의 숫자를 입력해 주세요.'
		},
		memEmail1: {
		required: '필수입력 항목입니다.'
		},
		memEmail2: {
		required: '필수입력 항목입니다.'
		},
		memAddr:{
		required: '필수입력 항목입니다.'
		}
      },
	errorElement:'div',
	errorPlacement: function(error,element){
		if($(element).attr('id') == 'inputTell1' || $(element).attr('id') == 'inputTell2'){
			error.insertAfter($('#joinTell'));
		}
		else if($(element).attr('id') == 'inputEmail1' || $(element).attr('id') == 'inputEmail2'){
			error.insertAfter($('#joinEmail'));
		}
		else{
			error.insertAfter(element);
		}
		error.css('color', 'red');
		error.css('font-size', '12px');
		error.css('margin-top', '2px');
	  },
      submitHandler: function(form) {
		alert(document.querySelector('#joinForm button').value + '6차'); //확인용 alert
		$('#inputTell1').attr('name', 'memTell');
		$('#inputTell2').attr('name', 'memTell');
		$('#inputEmail1').attr('name', 'memEmail');
		$('#inputEmail2').attr('name', 'memEmail');
		removeSpecData(form);
		//아이디 중복확인 여부 확인 안됨 -> if문 안 타고 바로 else문 탐. Y/N으로 검증해도 무조건 submit탐
		/*if(document.querySelector('#joinForm button').value === 'Y'){
			alert('Y를 탔음');
	        form.submit();   //유효성 검사를 통과시 전송
		}
		else{
	        
		}*/
      }
   });



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


    	