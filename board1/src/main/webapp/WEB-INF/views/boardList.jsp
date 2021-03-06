<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
	th {
		width:200px;
	}
	.board_table {
		text-align: center;
	}
	.write_board_btn{
		text-align: center;
		cursor: pointer;
		border: 2px solid #09c;
		margin: 5px;
		margin-left: 600px;
		padding: 5px 10px;
		width:200px;
		margin-top: 20px;
		
	}
	.table_box{
		text-align: center;
		
	}
	</style>
</head>
<body>
	<div class="table_box">
		<table class="board_table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>글 작성일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="board" items="${boardVO}">
				<tr class="board_info" data-boardId="${board.id}">
					<td>${board.id }</td>
					<td>${board.title}</td>
					<td>${board.writer }</td>
					<td>${board.reg_Date }</td>				
				</tr>
			</c:forEach>			
			</tbody>
		</table>	
		<div id="write_board_btn" class="write_board_btn">글쓰기</div>
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
