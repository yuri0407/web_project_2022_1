<!--

	작성자 : 정유리
	변경이력 : 
	프로그램 설명 : 로그인 처리
 
-->

<%@page import="br.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	
	MemberDao dao = new MemberDao();
	int i = dao.checkUser(id, pwd);
	
	if(i == 1) {
		session.setAttribute("userId", id);
		response.sendRedirect("br_main.do");
	} 
	else {
		
%>

<script>
	alert("아이디 혹은 비밀번호를 입력하지 않았거나 틀렸습니다.");
	history.back();
</script>

<%
	}
%>

</body>
</html>