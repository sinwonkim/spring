<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
	.table_box {
		text-align: center;
		margin-left: 20px;
	}
	#write_board_btn {
		cursor:pointer;
		border: 2px solid #09c;
	    width: 200px;
	    margin: 10px;
	
	}
	</style>
</head>
<body>
	<div class="table_box">
		<table class="board_table">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>작성일</th>		
				</tr>
			</thead>
			<tbody>
			<c:forEach var="board" items="${boardVO}">
				<tr class="board_info" data-boardId="${board.id}">
					<td>${board.id}</td>
					<td>${board.writer}</td>
					<td>${board.title}</td>
					<td>${board.reg_Date}</td>			
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<div id="write_board_btn">글쓰기</div>
	</div>

	
	<script
	  src="https://code.jquery.com/jquery-3.4.0.js"
	  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	  crossorigin="anonymous">
	</script>
	<script>
	$("#write_board_btn").on("click",function(){
		location.href="/boardWrite";
	});	
	
	$(".board_info").on("click",function(){
		var boardId = $(this).attr("data-boardId");
		location.href="/boardDetail/"+boardId;
	});
	
	</script>
	
	
	
	
</body>
</html>
