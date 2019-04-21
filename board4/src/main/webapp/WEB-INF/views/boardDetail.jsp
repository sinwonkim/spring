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
	<div>번호 :${boardVO.id}</div>
	<div>작성자:${boardVO.writer}</div>
	<div>제목:${boardVO.title}</div>
	<div>내용 :${boardVO.content}</div>
	<div>글 작성일:${boardVO.reg_Date}</div>
	<div id="update_btn" class="update_btn">수정</div>
	<div id="delete_btn">삭제</div>
	<script
	  src="https://code.jquery.com/jquery-3.4.0.js"
	  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	  crossorigin="anonymous">
	</script>
	<script>
		$("#update_btn").on("click",function(){
			location.href="/boardUpdate/${boardVO.id}";
		});
		
		$("#delete_btn").on("click",function(){
			var password = prompt('비밀 번호를 입력하세요');
			if(password !=null){
				$.ajax({
					url:"/boardDelete",
					type:'post',
					data:{"id":"${boardVO.id}","password":password},
					success:function(data){
						if(data==1){
							alert('삭제 되었습니다.');
							location.href="/";
						}else{
							alert('비밀번호를 확인하세요.');
						}
					}
				});
			}
		});
	</script>
</body>
</html>