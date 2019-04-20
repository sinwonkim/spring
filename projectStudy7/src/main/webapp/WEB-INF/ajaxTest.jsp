<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script>
	$(function(){
		$("#btn").click(function(){
			
			$.ajax({
				type : "post",
				data : {"txt":$("#txt").val()},
				url : "ajaxStudy",
				
				success:function(data){
					alert(data);
					$("div").html(data);
				},
				error:function(data){
					alert("error");
				}
			})	
		})
	})
</script>
</head>
<body>
{"seq":1, "board_subject":"111111",}

<input type = "button" name = "btn" id = "btn" value = "버튼">
<input type = "text" name = "txt" id= "txt">
<div>

</div>
</body>
</html>