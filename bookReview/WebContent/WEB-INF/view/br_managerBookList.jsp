<!--

	작성자 : 이로겸
	변경이력 :
	프로그램 설명 : 관리자 도서 목록
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_managerBookList.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>도서목록</title>
</head>
<body>

	<div class="wrap">
	<%@include file="header.jsp" %>
		<%@include file="br_managerMenu.jsp" %>
	
	
	
	
	<!-- 리뷰영역  -->
	
	<div class="content">
	
		<h2>도서목록</h2>
	
	
		<!-- 검색영역 -->
		
		<div class="search">			
			<label>도서명</label>
			<input type="text" name="bName" size="30">
			<button>검색</button>
			<button onclick="location.href='br_insertBookInfo.do'">등록하기</button>
		</div>

		
        <div class="tablearea">
            <table>
                <tr>
                    <th style="width: 3%">bNo.</th>
                    <th style="width: 30%">도서명</th>
                    <th style="width: 15%">저자명</th>
                    <th style="width: 15%">출판사</th>
                    <th style="width: 10%">출판일</th>
                    <th style="width: 7%">분류번호</th>
                </tr>
                <c:forEach var="dto" items="${dtos}">
                <tr class="row" onclick="location.href='br_editBookInfo.do?bno=${dto.bno}'">
                    <td>${dto.bno }</td>
                    <td>${dto.bname }</td>
                    <td>${dto.writer }</td>
                    <td>${dto.publisher }</td>
                    <td>${dto.pdate }</td>
                    <td>${dto.category }</td>
                </tr>
				</c:forEach>
            </table>
        </div>
	
	</div>
	
	
	
	</div>
	
</body>
</html>