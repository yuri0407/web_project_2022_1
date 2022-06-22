<!--

	작성자 : 이로겸
	변경이력 : 
	프로그램 설명 : 관리자 로그인 처리
 
-->

<%@page import="br.dao.ManagerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자 로그인</title>
</head>
<body>
<%
	String mNum = request.getParameter("mNum");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	
	ManagerDao dao = new ManagerDao();
	int i = dao.mangerLoginCheck(mNum, id, pwd);
	if(i == 1) {
		session.setAttribute("userId", "관리자");
		response.sendRedirect("br_managerBookList.do");
	} 
	else {
		
%>

<script>
	alert("필수정보를 입력하지 않았거나 틀렸습니다.");
	history.back();
</script>

<%
	}
%>

</body>
</html>