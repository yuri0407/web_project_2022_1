<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!-- header 영역  --> 	
	<header>
		<div class="headerBg"></div>
<%
	//현재 로그인되어 있는 계정이 관리자계정일 경우
	if((String)session.getAttribute("userId") == "관리자"){
%>

	<a href="br_managerBookList.do"><img src="./images/로고.png" alt="사이트로고"></a>
<%
		
	}else{
%>		
		<a href="br_main.do"><img src="./images/로고.png" alt="사이트로고"></a>
<%
	}
%>
		
<%
	if((String)session.getAttribute("userId") != null){
		//로그인 상태일 때의 출력
%>

	<div class="head"><%=(String)session.getAttribute("userId") %>님 반갑습니다! | <a href="logout.do">로그아웃</a></div>
		
<%
	}else{
%>		

		<div class="head"><a href="br_login.do">로그인</a> | <a href="br_signUp.do">회원가입</a></div>
		
<%
	}
%>