<!--

	�ۼ��� : ������
	�����̷� : 
	���α׷� ���� : �α׾ƿ� ó��
 
-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("userId");
	session.removeAttribute("userName");
	
	response.sendRedirect("br_main.do");
%>