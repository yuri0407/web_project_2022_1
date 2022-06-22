<!--

	작성자 : 정유리
	변경이력 : 
	프로그램 설명 : 로그아웃 처리
 
-->

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("userId");
	session.removeAttribute("userName");
	
	response.sendRedirect("br_main.do");
%>