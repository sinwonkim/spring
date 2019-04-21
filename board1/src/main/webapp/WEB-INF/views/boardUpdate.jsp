<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="board_update_form">
		<input type="hidden" name="id" value="${boardVO.id }">
		<div>글번호: ${boardVO.id}</div>
		<div>글작성자: ${boardVO.writer }</div>
		<div>제목: <input type="text" name="title" value="${boardVO.title}"/></div>
		<div>내용 : <textarea name="content">${boardVO.content}</textarea></div>
		<div>비밀번호 : <input type="password" name="password"></div>
		<div>글등록일 : ${boardVO.reg_Date}</div>
		<div id="updateAction_btn">글 수정</div>
	</form>
</body>

<script
		src="https://code.jquery.com/jquery-3.4.0.js"
		integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
		crossorigin="anonymous">
	</script>

<script>
	$("#updateAction_btn").on("click",function(){
		$.ajax({
			url:"/boardUpdate",
			type:"post",
			data:$("#board_update_form").serialize(),
			success:function(data){
				if(data==1){
					alert('글이 수정되었습니다.');
					location.href="/";
					
				}else{
					alert("비밀번호를 확인해주세요:()");
				}
				
				},
				error:function(){				
			}
		});
	});
</script>
</html>