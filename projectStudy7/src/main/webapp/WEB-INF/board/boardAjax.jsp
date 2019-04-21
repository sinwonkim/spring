<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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