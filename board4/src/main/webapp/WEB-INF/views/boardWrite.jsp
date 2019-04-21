<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.write_btn{
		width: 200px;
		margin-top: 20px;
		border: 2px solid #819FF7;
		cursor: pointer;
		text-align: center;
	}
	</style>
</head>
<body>
	<form id="write_form">
		<div>작성자 : <input type="text" name="writer"></div>
		<div>제목 : <input type="text" name="title"></div>
		<div>내용 : <textarea name="content"></textarea></div>
		<div>비밀번호 :<input type="password" name="password"></div>
		<div id="write_btn" class="write_btn">글 등록</div>
	</form>
	<script
	  src="https://code.jquery.com/jquery-3.4.0.js"
	  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	  crossorigin="anonymous">
	</script>
	<script>
		$("#write_btn").on("click",function(){
			$.ajax({
				url:"/boardWrite",
				type:"post",
				data:$("#write_form").serialize(),
				success:function(data){
					if(data==1){
						alert('글 등록 성공');
						location.href="/";
					}else{
						alert('글 등록 실패');
					}
				},
				error:function(){
					
				}
			});
		});
	</script>
</body>
</html>