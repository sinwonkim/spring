<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
<script>
	function fncClick(){
		var txt = document.getElementById('txt').value;
		alert(txt);
	}
</script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<input type = "button" name = "btn" id = "btna" value = "버튼" onclick="fncClick()">
<input type = "text" name = "txt" id = "txt">
</body>
</html>
