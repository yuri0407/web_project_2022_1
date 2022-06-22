<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 공지사항 상세보기
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_noticeDetail.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>도서목록</title>
</head>
<body>
	<div class="wrap">
	<%@include file="header.jsp" %>
		<%@include file="br_menu.jsp" %>



        <!-- 질문목록 영역 -->
        <div class="content">
            <div class="btn">
                <button onclick="location.href='br_noticeList.do'">목록으로</button>
            </div>

            
            <div class="detail">
            	<c:forEach var="dto" items="${dtos}">
                <h2>${dto.nTitle }</h2>
                <div class="date">등록일 : ${dto.nDate }</div>
                <hr>

                <div class="contentbox">
                    ${dto.nContent }
                </div>
                </c:forEach>
            </div>

		
        
	
        </div>




	
	</div>
	
</body>
</html>