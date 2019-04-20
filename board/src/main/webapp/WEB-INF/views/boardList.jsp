<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	 <table class="table table-striped table-hover">
	            <thead>
	                <tr>
	                    <th>번호</th>
	                    <th style="text-align: center; width:100px;">제목</th>
	                    <th style="width:100px;">내용</th>
	                    <th style="width:100px;">작성자</th>
	                    <th style="width:230px;">글작성</th>
	                </tr>
	            </thead>
	            <tbody>	    			
	                <c:forEach var="list" items="${list}" varStatus="g">
					<tr >
						<td></td>
						<td style="text-align: center;"></td>
						<td></td>
						<td>
					
						</td>
					</tr>
					</c:forEach>
	            </tbody>
	        </table> 
</body>
</html>
