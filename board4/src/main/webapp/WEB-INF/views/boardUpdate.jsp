<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.update_btn{
		width: 200px;
		margin-top: 20px;
		border: 2px solid #819FF7;
		cursor: pointer;
		text-align: center;
	}
</style>
</head>
<body>
	<form id="update_form">
		<div><input type="hidden" name="${boardVO.id}"></div>
		<div>번호 :${boardVO.id}</div>
		<div>작성자 :${boardVO.writer}</div>
		<div>제목 :<input type="text" name="title" value="${boardVO.title}"></div>
		<div>내용 :<textarea name="content">${boardVO.content}</textarea></div>
		<div>비밀번호 :<input type="password" name="password"></div>
		<div>작성일 :${boardVO.reg_Date}</div>
		<div id="update_btn" class="update_btn">수정</div>
	</form>
	
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
				data:$("#update_form").serialize(),
				success:function(data){
					if(data==1){
						alert('글이 등록 되었습니다.');
						location.href="/"
					}else{
						alert('글 수정 실패');
					}
					},
					error:function(){
						
					}
				
			});
		});
	</script>
</body>
</html>