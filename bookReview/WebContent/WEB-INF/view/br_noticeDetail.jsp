<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 공지사항 상세보기
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<%@include file="br_menu.jsp" %>



        <!-- 질문목록 영역 -->
        <div class="content">
            <div class="btn">
                <button onclick="location.href='br_noticeList.jsp'">목록으로</button>
            </div>

            
            <div class="detail">
                <h2>신규등록도서 목록입니다.</h2>
                <div class="date">등록일 : 2022-05-15</div>
                <hr>

                <div class="contentbox">
                    1. Tuesdays with Morrie(Mitch Albom)<br>
                    2. 오늘부터 개발자(김병욱)<br>
                    3. 통계학, 빅데이터를 잡다(조재근)<br>
                    <br><br><br>
                    도서 상세 정보는 도서목록에서 확인 가능합니다.
                </div>
            </div>

		
        
	
        </div>




	
	</div>
	
</body>
</html>