<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 사용자 공지사항 목록
	
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
<title>공지사항</title>
</head>
<body>
    <div class="wrap">
        <%@include file="br_menu.jsp" %>



	<!-- 공지사항 목록 영역 -->
    <div class="content">
	
		<h2>공지목록</h2>
	
	
		
        <div class="tablearea">
            <table>
                <tr>
                    <th style="width: 5%">No.</th>
                    <th style="width: 30%">공지제목</th>
                    <th style="width: 50%">공지내용</th>
                    <th>날짜</th>
                </tr>
                <tr class="row" onclick="location.href='br_noticeDetail.jsp'">
                    <td>1</td>
                    <td>신규등록도서 목록입니다.</td>      
                    <td style="width: 200px;">1. Tuesdays with Morrie(Mitch Albom)<br>
                        2. 오늘부터 개발자(김병욱)<br>
                        3. 통계학, 빅데이터를 잡다(조재근)<br>
                        <br><br><br>
                        도서 상세 정보는 도서목록에서 확인 가능합니다.</td>      
                    <td>2022-05-14</td>
                </tr>

            </table>
        </div>
	
    </div>
</div>

<%@include file="br_footer.jsp"%>


</body>
</html>