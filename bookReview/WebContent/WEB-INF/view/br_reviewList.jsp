<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 리뷰 목록 화면
	
-->
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_reviewList.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>도서리뷰</title>
</head>
<body>
	<div class="wrap">
		<%@include file="header.jsp" %>
		<%@include file="br_menu.jsp" %>
	
	
	
	
	<!-- 리뷰영역  -->
	
	<div class="content">
	
		<h2>도서리뷰</h2>
	
	
		<!-- 검색영역 -->
		
		<div class="search">
			<label>도서명</label>
			<input type="text" name="bname" size="30">
			<button onclick="location.href='searchReview.do'">검색</button>
			<button onclick="location.href='br_writeReview.do'">리뷰등록</button>
		</div>
		
		<div class="tablearea">
			<table>
				<tr>
					<th style="width: 5%">No.</th>
					<th style="width: 11%">닉네임</th>
					<th style="width: 30%">도서명</th>
					<th>리뷰내용</th>
				</tr>
				<tr class="row">
				<c:forEach var="dto" items="${dtos}">
					<td>${dto.rNum }</td>
					<td>${dto.nickName }</td>
					<td>${dto.bname }</td>
					<td>${dto.content }</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	
	</div>
	
	
	
	</div>
	
</body>
</html>