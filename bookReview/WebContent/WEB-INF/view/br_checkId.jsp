<!--

	�ۼ��� : ������
	�����̷� : 
	���α׷� ���� : ���̵� �ߺ�Ȯ��
 
-->

<%@page import="br.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>
<%
	String id = request.getParameter("id");

	
	MemberDao dao = new MemberDao();
	int checkId = dao.checkId(id);
	
	if(checkId == 1){
		
%>

		<script>
			alert("�Է��Ͻ� ���̵�� ����� �� �����ϴ�.");
			history.back();
		</script>
<%
	}
	else{
%>
		<script>
			alert("��� ������ ���̵��Դϴ�.");
			history.back();
		</script>
<%
	}
%>
</body>
</html>