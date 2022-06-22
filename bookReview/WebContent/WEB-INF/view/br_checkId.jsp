<!--

	작성자 : 정유리
	변경이력 : 
	프로그램 설명 : 아이디 중복확인
 
-->

<%@page import="br.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
<%
	String id = request.getParameter("id");

	
	MemberDao dao = new MemberDao();
	int checkId = dao.checkId(id);
	
	if(checkId == 1){
		
%>

		<script>
			alert("입력하신 아이디는 사용할 수 없습니다.");
			history.back();
		</script>
<%
	}
	else{
%>
		<script>
			alert("사용 가능한 아이디입니다.");
			history.back();
		</script>
<%
	}
%>
</body>
</html>