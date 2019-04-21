<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script>
	$(function(){
		$("#registerBtn").click(function(){
			$("#writeFrm").attr("action","write").attr("method","post").submit();
// 			$("#writeFrm").attr("method","post");
// 			$("#writeFrm").submit();
		})
		
		$("#updateBtn").click(function(){
			$("#writeFrm").attr("action","update").attr("method","post").submit();
// 			$("#writeFrm").attr("method","post");
// 			$("#writeFrm").submit();
		})
	})
</script>
</head>
<body>
<form name = "writeFrm" id = "writeFrm">
	작성자	:	<input type = "text" id = "MEM_NAME" name = "MEM_NAME" value = "${vo.MEM_NAME }"><br>
	작성자ID	:	<input type = "text" id = "MEM_ID" name = "MEM_ID"  value = "${vo.MEM_ID }"><br>
	제목		:	<input type = "text" id = "BOARD_SUBJECT" name = "BOARD_SUBJECT"  value = "${vo.BOARD_SUBJECT }"><br>
	내용		:<br>
	<textarea rows="5" cols="15" name = "BOARD_CONTENT" id = "BOARD_CONTENT"> ${vo.BOARD_CONTENT }</textarea>
	<div>
		<c:if test="${empty vo }">
			<input type = "button" name = "registerBtn" id = "registerBtn" value = "등록">
		</c:if>
		<c:if test="${not empty vo }">
			<input type = "hidden" name = "SEQ" id = "seq" value = "${vo.SEQ }"> 
			<input type = "button" name = "updateBtn" id = "updateBtn" value = "수정">
		</c:if>
		<input type = "button" name = "canBtn" id = "canBtn" value = "취소">
	</div>
</form>
</body>
</html>