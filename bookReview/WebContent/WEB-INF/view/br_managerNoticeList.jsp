<!--

	작성자 : 이로겸
	변경이력 :
	프로그램 설명 : 관리자 공지사항 목록
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/br_noticeList.css">
	<script src="./script/jquery-3.6.0.js"></script>
	<script src="./script/script.js"></script>
	<title>공지사항</title>
</head>
<body>
    <div class="wrap">	
    <%@include file="header.jsp" %>
    	<%@include file="br_managerMenu.jsp" %>
    
    
	



	<!-- 공지사항 목록 영역 -->
    <div class="content">
	
		<h2>공지목록</h2>
	
	
		
		<div class="btn">		
			<button onclick="location.href='br_insertNotice.do'">등록하기</button>
		</div>

		
        <div class="tablearea">
            <table>
                <tr>
                    <th style="width: 10%;">No.</th>
                    <th style="width: 70%">공지제목</th>
                    <th>날짜</th>
                </tr>
                <tr class="row" onclick="location.href='br_editNotice.do'">
                    <td>1</td>
                    <td>신규등록도서 목록입니다.</td>      
                    <td>2022-05-15</td>
                </tr>

            </table>
        </div>
	
    </div>
</div>

</body>
</html>