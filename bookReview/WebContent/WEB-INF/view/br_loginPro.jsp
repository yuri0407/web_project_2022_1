<!--

	�ۼ��� : ������
	�����̷� : 
	���α׷� ���� : �α��� ó��
 
-->

<%@page import="br.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>�α���</title>
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
	alert("���̵� Ȥ�� ��й�ȣ�� �Է����� �ʾҰų� Ʋ�Ƚ��ϴ�.");
	history.back();
</script>

<%
	}
%>

</body>
</html>