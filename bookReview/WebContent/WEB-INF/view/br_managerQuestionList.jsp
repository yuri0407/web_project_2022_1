<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 관리자 질문목록
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_managerQuestionList.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>도서목록</title>
</head>
<body>
	<div class="wrap">
	<%@include file="header.jsp" %>
		<%@include file="br_managerMenu.jsp" %>
	
	
	
	
	<!-- 질문목록 영역 -->
    <div class="content">
	
		<h2>Q&A</h2>

	
	
		
        <div class="tablearea">
            <table>
                <tr>
                    <th style="width: 5%">No.</th>
                    <th style="width: 20%">닉네임</th>
                    <th style="width: 60%">질문내용</th>
                    <th>날짜</th>
                </tr>
                <tr class="row" onclick="location.href='br_editQuestion.jsp'">
                    <td>1</td>
                    <td>유리</td>      
                    <td>로그인과 관련해서 질문있습니다.</td>      
                    <td>2022-05-15</td>
                </tr>

            </table>
        </div>
	
    </div>
	
	
	
	</div>
	
</body>
</html>