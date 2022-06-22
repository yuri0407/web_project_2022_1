<!--

	작성자 : 빈수윤
	변경이력 :
	프로그램 설명 : 도서설명 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_bookExplanation.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>도서설명</title>
</head>
<body>
	
	<div class="wrap">
	
	 <%@include file="header.jsp" %>
	 <%@include file="br_menu.jsp" %>
	 

	


	
	<!-- 로그인 영역 -->
	<div class="content">
	
		<h2>도서소개</h2>
		
		<c:forEach var="dto" items="${dtos}">
		<h2 class="bname">${dto.bname }</h2>
		<table>
			<tr>
			
<!-- 				<td class="td">도서명</td> -->
<%-- 				<td colspan="2" style="text-align:center;"><span>${dto.bname }</span></td> --%>
			</tr>
			
			<tr>
				<td class="td">저자</td>
				<td><span>${dto.writer }</span></td>
			</tr>
			
			<tr>
				<td class="td">출판사</td>
				<td><span>${dto.publisher }</span></td>
			</tr>

			<tr>
				<td class="td">출판일</td>
				<td><span>${dto.pdate }</span></td>
			</tr>
			
			<tr>
				<td class="td">분류번호</td>
				<td><span>${dto.category }</span></td>
			</tr>
			
      </table>
		<div class="explanation">
			${dto.bContent }

		</div>
		</c:forEach>
	</div>
	</div>
	
</body>
</html>