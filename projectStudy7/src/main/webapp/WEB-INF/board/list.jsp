<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script>
	function fncSearchGo(){
// 		var frm = document.searchFrm;
// 		frm.method = "post";
// 		frm.action = "board";
// 		frm.submit();
		$.ajax({
			type : "post",
			data : $("#searchFrm").serialize(),
			url : "boardAjax",
			success:function(data){
				$("#tbody_list").html(data);
			},
			error:function(data){
				alert("error");
			}
		})	
	}
	
	function fncGoDelete(){
		var frm = document.listFrm;
		frm.method = "post";
		frm.action = "delete";
		frm.submit();
	}
</script>
<body>
<%-- <form:form commandName="searchFFF"> --%>
<%-- 	<form:input path="txt"/> --%>
<%-- </form:form> --%>

<form name = "searchFrm" id = "searchFrm">
	<select name = "search" id  = "search">
		<option value = "all">전체</option>
		<option value = "BOARD_SUBJECT">제목</option>
		<option value = "MEM_ID">작성자</option>
		<option value = "subCont">제목+내용</option>
	</select>
	<input type = "text" name = "searchTxt" id = "searchTxt" value = "">
	<input type = "button" name = "searchBtn" id = "searchBtn" value = "검색" onclick="fncSearchGo()"><br>
	<input type = "date" name = "stDate">~<input type = "date" name = "enDate">
</form>
<form name = "listFrm">
<!-- jsp jstl, el태그 -->
<input type = "button" name = "regBtn" id = "regBtn" value = "글쓰기" onclick="javascript:location.href = 'writeView'">
<input type = "button" name = "delBtn" id = "delBtn" value = "삭제" onclick="fncGoDelete()">
<table border="1">
	<thead>
		<tr>
			<th><input type = "checkbox" name = "allChk"></th>
			<th>글번호</th>
			<th>작성자(ID)</th>
			<th>제목</th>
			<th>작성일</th>
			<th>수정일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody id = "tbody_list">
		<c:forEach items="${board }" var = "list">
		<tr>
			<td><input type = "checkbox" name = "chk" value = "${list.SEQ}"></td>
			<td>${list.SEQ}</td>
			<td>${list.MEM_NAME}(${list.MEM_ID})</td>
			<td><a href = "detail?seq=${list.SEQ }">${list.BOARD_SUBJECT}</a></td>
			<td><fmt:formatDate value="${list.REG_DATE}" pattern="yyyy-MM-dd"/> </td>
			<td><fmt:formatDate value="${list.UPT_DATE}" pattern="yyyy-MM-dd"/> </td>
			<td>${list.VIEW_CNT}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
	<div>
		
	</div>
</form>
</body>
</html>
