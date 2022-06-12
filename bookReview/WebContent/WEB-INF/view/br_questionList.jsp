<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 사용자 질문 목록 화면
	
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
<title>Q&A</title>
</head>
<body>
    <div class="wrap">
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
                    <th style="width: 5%">No.</th>
                    <th style="width: 20%">닉네임</th>
                    <th style="width: 60%">질문내용</th>
                    <th>날짜</th>
                </tr>
                <tr class="row" onclick="location.href='br_questionDetail.jsp'">
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