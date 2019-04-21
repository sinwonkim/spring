<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>내용</td>
				<td>작성자</td>
				<td>글작성일</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${boardVO.id }</td>
				<td>${boardVO.title }</td>
				<td>${boardVO.content }</td>
				<td>${boardVO.writer }</td>
				<td>${boardVO.reg_Date }</td>
			</tr>
		</tbody>
	</table>
	<div id="board_update_btn">수정</div>
	<div id="board_delete_btn">삭제</div>
	
	<script
	  src="https://code.jquery.com/jquery-3.4.0.js"
	  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	  crossorigin="anonymous">
	</script>
	<script>
		$("#board_update_btn").on("click",function(){
			location.href="/boardUpdate/${boardVO.id}";
		});
		$("#board_delete_btn").on("click",function(){
			var password = prompt("비밀번호를 입력하세요");
			if(password != null){
				$.ajax({
					url:"/boardDelete",
					type:"post",
					data:{"id":"${boardVO.id}","password":password},
					success:function(data){
						if(data==1){
							alert('글이 삭제 되었습니다.');
							location.href="/";
						}else{
							alert("비밀번호 불일치:()");
						}
					},
					error:function(){
						
					}
				});
			}
		});
	
	</script> 
	
</body>
</html>