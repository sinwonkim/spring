<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>글번호 :${boardVO.id}</div>
	<div>작성자 :${boardVO.writer} </div>
	<div>제목 :${boardVO.title}</div>
	<div>작성일자 :${boardVO.reg_Date}</div>
	<div id="update_btn">글 수정</div>
	<div id="delete_btn">글 삭제</div>
</body>
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
		var password = prompt("비밀번호를 입력하세요");
		if(password != null){
			$.ajax({
				url:"/boardDelete",
				type:"post",
				data:{"id":"${boardVO.id}","password":password},
				success:function(data){
					if(data==1){
						alert('글 삭제가 되었습니다.');
						location.href="/";
					}else{
						alert("비밀번호가 틀렸습니다.");
					}
				}
			});	
		}
		
	});
	</script>
</html>