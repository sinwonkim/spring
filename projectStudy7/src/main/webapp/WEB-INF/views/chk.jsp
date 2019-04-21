<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
<script>
	$(function(){
		
		$("#allChk").click(function(){
			if($("#allChk").is(":checked")){
				$("#dvMid input[type=checkbox]").prop("checked",true);
				$("#dvBottom").text($("#dvMid").text().replace(/(\s*)/g, ""));
			}else{
				$("#dvMid input[type=checkbox]").prop("checked",false);
				$("#dvBottom").text("");
			}
		})
		
		$("#btn").click(function(){
			var chked = $("#dvMid input[name=chk]:checked").length;
			if(chked==0){
				alert("항목을 체크하세요");
			}else if(chked < 5 || $("#allChk").is(":checked")){
				alert("등록 성공");
			}else{
				alert("등록 실패");
			}
		})
	})
	
	function fncClick(inputChk){
		var chk = $("#dvMid input[type=checkbox]").length;
		var chked = $("#dvMid input[name=chk]:checked").length;
		if(chk==chked){
			$("#allChk").prop("checked",true);
		}else{
			$("#allChk").prop("checked",false);
		}
		
		if($(inputChk).is(":checked")){
			$("#dvBottom").append($(inputChk).val());
		}else{
			var txt = $("#dvBottom").text().replace($(inputChk).val(),"");
			$("#dvBottom").text(txt);
		}
			
	}
</script>
</head>
<body>
	<div>
		<input type="checkbox" id = "allChk" name = "allChk"><label for = "allChk">전체</label> 
		<input type = "button" id = "btn" name = "btn" value = "확인">
	</div>
	<div id = "dvMid">
		<input type="checkbox" id = "chk1" name = "chk" onclick="fncClick(this)" value = "가">가
		<input type="checkbox" id = "chk2" name = "chk" onclick="fncClick(this)" value = "나">나
		<input type="checkbox" id = "chk3" name = "chk" onclick="fncClick(this)" value = "다">다
		<input type="checkbox" id = "chk4" name = "chk" onclick="fncClick(this)" value = "라">라
		<input type="checkbox" id = "chk5" name = "chk" onclick="fncClick(this)" value = "마">마
		<input type="checkbox" id = "chk6" name = "chk" onclick="fncClick(this)" value = "바">바
		<input type="checkbox" id = "chk7" name = "chk" onclick="fncClick(this)" value = "사">사
		<input type="checkbox" id = "chk8" name = "chk" onclick="fncClick(this)" value = "아">아
		<input type="checkbox" id = "chk9" name = "chk" onclick="fncClick(this)" value = "카">카
	</div>
	<div id = "dvBottom">
	</div>
</body>
</html>