<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	#board_btn {
		cursor: pointer;
		border: 2px solid #819FF7;
		width: 200px;
		margin: 20px;
		text-align: center;
	}
	
	</style>
</head>
<body>
	<form id="update_from">
		<input type="hidden" value="${boardVO.id}" name="id">
		<div>번호: ${boardVO.id} </div>
		<div>작성자: ${boardVO.writer} </div>
		<div>제목 <input type="text" name="title" value="${boardVO.title}"></div>
		<div>내용 <input type="text" name="content" value="${boardVO.content}"></div>
		<div>비밀번호 : <input type="password" name="password"></div>
		<div>작성일 ${boardVO.reg_Date}</div>
	</form>
	<div id="update_btn">글수정</div>
	
	<script
	  src="https://code.jquery.com/jquery-3.4.0.js"
	  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	  crossorigin="anonymous">
	</script>
	<script>
	$("#update_btn").on("click",function(){
		$.ajax({
			url:"/boardUpdate",
			type:"post",
			data:$("#update_from").serialize(),
			success:function(data){
				if(data == 1){
					alert('수정 성공');
					location.href="/";
				}else{
					alert('비밀 번호가 틀렸습니다.');
				}
			}
		});
	});
	</script>
</body>
</html>