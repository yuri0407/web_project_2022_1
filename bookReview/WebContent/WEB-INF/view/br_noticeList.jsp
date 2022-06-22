<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 사용자 공지사항 목록
	
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
<title>공지사항</title>
</head>
<body>
    <div class="wrap">
    <%@include file="header.jsp" %>
        <%@include file="br_menu.jsp" %>



	<!-- 공지사항 목록 영역 -->
    <div class="content">
	
		<h2>공지목록</h2>
	
	
		
        <div class="tablearea">
            <table>
                <tr>
                    <th style="width: 10%">No.</th>
                    <th style="width: 70%">공지제목</th>
                    <th>날짜</th>
                </tr>
                <c:forEach var="dto" items="${notice}">
                <tr class="row" onclick="location.href='br_noticeDetail.do?noNum=${dto.noNum}'">
                    <td>${dto.noNum }</td>
                    <td>${dto.nTitle }</td>      
                    <td>${dto.nDate }</td>
                </tr>
				</c:forEach>
            </table>
        </div>
	
    </div>
</div>

<%@include file="br_footer.jsp"%>


</body>
</html>