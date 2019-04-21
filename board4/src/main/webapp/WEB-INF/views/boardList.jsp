<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
	#write_btn{
		width: 200px;
		margin-top: 20px;
		border: 2px solid #819FF7;
		cursor: pointer;
		text-align: center;
	}
	</style>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성날짜</th>			
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
	<div id="write_btn">글 작성</div>
	
	<script
	  src="https://code.jquery.com/jquery-3.4.0.js"
	  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
	  crossorigin="anonymous">
	</script>
	<script>
		$("#write_btn").on("click",function(){
			location.href="/boardWrite";
		});
		
		$(".board_info").on("click",function(){
			var boardId = $(this).attr("data-boardId");
			location.href="/boardDetail/"+boardId;
		});
	</script>
</body>
</html>
