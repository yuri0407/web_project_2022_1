<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 사용자 질문 목록 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">	
<link rel="stylesheet" href="./css/br_noticeList.css">
<script src="./script/jquery-3.6.0.js"></script>
<script src="./script/script.js"></script>
<title>Q&A</title>
</head>
<body>
    <div class="wrap">
    <%@include file="header.jsp" %>
        <%@include file="br_menu.jsp" %>



	<!-- 공지사항 목록 영역 -->
    <div class="content">
	
		<h2>Q&A</h2>

        <div class="btn">		
			<button onclick="location.href='br_writeQuestion.jsp'">질문하기</button>
		</div>
	
	
		
        <div class="tablearea">
            <table>
                <tr>
                    <th style="width: 10%">No.</th>
                    <th style="width:60%">제목</th>
                    <th>날짜</th>
                </tr>
                <tr class="row" onclick="location.href='br_questionDetail.do?qNo=${dto.qNo}'">
                <c:forEach var="dto" items="${dtos}">
                    <td>${dto.qNo }</td>
                    <td>${dto.qTitle }</td>
                    <td>${dto.qDate }</td>
                </tr>
                </c:forEach>

            </table>
        </div>
	
    </div>
</div>


</body>
</html>