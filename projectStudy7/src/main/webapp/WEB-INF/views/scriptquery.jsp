<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script>

	$(document).ready(function(){
		$("#regi_btn").click(function(){
			validate();
			
			if($("#pass").val() != $("#pass2").val()){
				alert("비밀번호가 다릅니다.");
				return;
			}
			
			var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			var email = $("#email1").val() + "@" + $("#email2").val();
			if(!re.test(email)){
				alert("이메일 양식이 다릅니다.");
				return;
			}
			
			
			if(!check_jumin()){
				alert("유효한 주민번호가 아닙니다.");
				return;
			}
			
		})
		
		$("#ph2").on("keyup", function(){
			var numberChk = /[0-9]/;
			for(var i = 0; i < $("#ph2").val().length; i++){
				if(!numberChk.test($("#ph2").val().charAt(i))){
					alert("숫자만 입력하세요");
					$("#ph2").val("");
					return;
				}
			}
			
			if($("#ph2").val().length==4){
				$("#ph3").focus();
			}
			
			
		})
		
		
	})
	
	function validate(){
		if($("#id").val()==""){
			alert("아이디를 입력하세요");
			$("#id").focus();
			return false;
		}
		
		if($("input[name=pass]").val()==""){
			alert("비밀번호를 입력하세요");
			$("input[name=pass]").focus();
			return;
		}
		
	}
	
	
	
	function fncNameKeyUp(inputTxt){
		var txt = $(inputTxt).val();
		var check = /[a-zA-Z가-힣]/; 
		for(var i = 0; i < $(inputTxt).val().length; i++){
			if(!check.test(txt.charAt(i))){
				alert("문자만 입력하세요");
				$(inputTxt).val("");
				return;
			}
		}

		if($(inputTxt).val().length > 5){
			alert("5글자 미만으로 입력하세요");
			$(inputTxt).val($(inputTxt).val().substr(0,5));
			return;
		}
	}
	
	function check_jumin() { 
		 var jumin=document.getElementById('jumin1').value+document.getElementById('jumin2').value;

		 //주민등록 번호 13자리를 검사한다.
		  var fmt = /^\d{6}[1234]\d{6}$/;  //포멧 설정
		  if (!fmt.test(jumin)) {
		   return false;
		  }

		  // 생년월일 검사
		  var birthYear = (jumin.charAt(6) <= "2") ? "19" : "20";
		  birthYear += jumin.substr(0, 2);
		  var birthMonth = jumin.substr(2, 2) - 1;
		  var birthDate = jumin.substr(4, 2);
		  var birth = new Date(birthYear, birthMonth, birthDate);

		  if ( birth.getYear() % 100 != jumin.substr(0, 2) ||
		       birth.getMonth() != birthMonth ||
		       birth.getDate() != birthDate) {
		     return false;
		  }

		  // Check Sum 코드의 유효성 검사
		  var buf = new Array(13);
		  for (var i = 0; i < 13; i++) buf[i] = parseInt(jumin.charAt(i));
		 
		  multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];
		  for (var sum = 0, i = 0; i < 12; i++) sum += (buf[i] *= multipliers[i]);

		  if ((11 - (sum % 11)) % 10 != buf[12]) {
		     return false;
		  }

		  
		  return true;
		}

</script>
</head>
<body>
<form>
 <table width="1400" height="650">
  <tr>
   <td width="100%" height="10%">회원가입
   </td>
  </tr>
  <tr>
   <td height="60%" align="center" valign="top">
   <hr><br>
   <p align="left" style="padding-left:160px">
   <br><br>
   ID : <input type="text" size="10" maxlength="15" name="id" id = "id">
   		<input type = "button" name = "idChk" value = "중복체크">
   <br><br>
   비밀번호 : <input type="password" size="15" maxlength="20" name="pass" id = "pass"><br><br>
   비밀번호 확인 : <input type="password" size="15" maxlength="20" name="pass2" id = "pass2"><br><br>
   이름 : <input type="text" size="13" name="name" id = "name" onkeyup="fncNameKeyUp(this)"><br><br>
   이메일 : <input type="text" size="15" name="email1" id = "email1">@<input type="text" size="15" name="email2" id = "email2"><br><br>
   휴대폰 : <select name="ph1">
       <option value="010">010</option>
       <option value="011">011</option>
       <option value="016">016</option>
       <option value="017">017</option>
       <option value="019">019</option>
     </select>
     - <input type="text" name="ph2" size="5" maxlength="4" id = "ph2"> - <input type="text" name="ph3" size="5" maxlength="4" id = "ph3"><br><br>
   성별 : <input type="radio" name="gender" value="남자"> 남자&nbsp;&nbsp;
   <input type="radio" name="gender" value="여자"> 여자<br><br>
   주민번호 : <input type = "text" name = "jumin1" id = "jumin1"> -  <input type = "password" name = "jumin2" id = "jumin2"><br><br>
   주소 : <input type="text" name="address" size="15" maxlength="15"><br>
   *주소는 (시/도)만 입력해주세요 (예: 경기도, 서울특별시, 경상남도 등)
   </p>
  </td>
  </tr>
  <tr>
   <td align="center">
   <hr><br>
    <input type="button"  id = "regi_btn" value="가입신청">&nbsp;
    <input type="reset" value="다시입력">&nbsp;
    <input type="button" value="취소">
   </td>
  </tr>
 </table>
</form>
</body>
</html>