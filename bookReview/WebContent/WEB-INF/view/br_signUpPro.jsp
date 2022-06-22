<!--

	작성자 : 정유리
	변경이력 : 
	프로그램 설명 : 회원가입 처리
 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<script>
		alert("회원이 되신 것을 환영합니다!");
	</script>
<%		
		response.sendRedirect("signUp.do");
%>
</body>
</html>