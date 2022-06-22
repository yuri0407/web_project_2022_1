<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 도서추가요청 목록
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">	
<link rel="stylesheet" href="./css/br_noticeList.css">
<script src="./script/jquery-3.6.0.js"></script>
<script src="./script/script.js"></script>
<title>도서추가요청</title>
</head>
<body>
    <div class="wrap">
      <%@include file="header.jsp" %>
      <%@include file="br_menu.jsp" %>



	<!-- 공지사항 목록 영역 -->
    <div class="content">
	
		<h2>도서추가요청</h2>

        <div class="btn">		
			<button onclick="location.href='br_writeRequest.jsp'">요청하기</button>
		</div>
	
	
		
        <div class="tablearea">
            <table>
                <tr>
                    <th style="width: 5%">No.</th>
                    <th style="width: 20%">닉네임</th>
                    <th style="width: 60%">요청내용</th>
                    <th>날짜</th>
                </tr>
                <tr class="row">
                    <td>1</td>
                    <td>유리</td>
                    <td>불편한 편의점(김호연) 추가해주세요!</td>
                    <td>2022-05-16</td>
                </tr>

            </table>
        </div>
	
    </div>
</div>


</body>
</html>