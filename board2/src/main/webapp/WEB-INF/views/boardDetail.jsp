<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>번호 : ${boardVO.id}</div>
	 <div>작성자: ${boardVO.writer}</div>
	 <div>내용 : ${boardVO.content}</div>
	 <div>작성날짜: ${boardVO.reg_Date}</div>
	<div id="board_update_btn">수정</div>
	<div id="delete_btn">삭제</div>
	<script
	  src="https://code.jquery.com/jquery-3.4.0.js"
	  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	  crossorigin="anonymous">
	</script>
	<script>
	$("#board_update_btn").on("click",function(){
		location.href="/boardUpdate/${boardVO.id}";
	});
	$("#delete_btn").on("click",function(){
		 var password = prompt("비밀번호를 입력하세요");
		 if(password != null){
			 $.ajax({
				 url:"/boardDelete",
				 type:"post",
				 data:{"id":"${boardVO.id}","password":password},
				 success:function(data){
					 if(data==1){
						 alert('글이 삭제되었습니다.');
						 location.href="/";
					 }else {
						 alert('비밀번호 불일치');
					 }
				 }
			 });
		 }
	});
	</script>
</body>
</html>