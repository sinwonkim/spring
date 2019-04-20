<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="board_write_form">
		<div>
			작성자 : <input type="text" name="writer">
			제목 : <input type="text" name="title">
			내용: <textarea name="content"></textarea>
			비밀번호: <input type="password" name="password">
			<div id="write_board_btn">글쓰기</div>
		</div>	
	</form>
	
	<script
	  src="https://code.jquery.com/jquery-3.4.0.js"
	  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	  crossorigin="anonymous">
	</script>
	<script>
		$("#write_board_btn").on("click",function(){
			$.ajax({
				url:"/boardWrite",
				type:"post",
				data:$("#board_write_form").serialize(),
				success:function(data) {
					if(data==1){
						alert("글이 등록 되었습니다.");
						location.href="/";
					}else {
						alert('글 등록 실패:{}');
					}
				},
				error:function(){
					
				}
			});
		});
	
	</script> 
</body>
</html>