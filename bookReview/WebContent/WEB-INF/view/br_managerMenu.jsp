<!--

	작성자 : 정유리
	변경이력 : 
	프로그램 설명 : 관리자 메뉴
 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- 	<!-- header 영역  -->
<!-- 	<header> -->
<!--         <div class="headerBg"></div> -->
<!--         <a href="br_managerBookList.do"><img src="./images/로고.png" alt="사이트로고"></a> -->
<!--         <div class="head">관리자님 안녕하세요! | <a href="br_main.do">로그아웃</a></div> -->
        
        <!-- 메인메뉴영역  -->
        <nav>			
            
            <ul>
                <li class="lv1">
                    <a href="#">도서</a>
                    <ul class="lv2">
                        <li><a href="br_managerBookList.do">도서목록</a></li>
                    </ul>
                </li>
                <li class="lv1">
                    <a href="#">고객센터</a>
                    <ul class="lv2">
                        <li><a href="br_managerQuestionList.do">Q&A</a></li>
                        <li><a href="br_managerBookRequest.do">도서추가요청</a></li>
                    </ul>
                    <li class="lv1">
                        <a href="#">공지사항</a>
                        <ul class="lv2">
                            <li><a href="br_managerNoticeList.do">공지사항</a></li>
                        </ul>
                    </li>
                </li>
                
            </ul>
            
        </nav>

    </header>
    







    <!-- 서브메뉴영역  -->

    <div class="subMenu">			
    
        
        <ul class="subLv1">
            <li>도서</li>
            <ul class="subLv2">
                <li><a href="br_managerBookList.do">도서목록</a></li>
            </ul>
        </ul>
        
        <ul class="subLv1">
            <li>고객센터</li>
            <ul class="subLv2">
                <li><a href="br_managerQuestionList.do">Q&A</a></li>
                <li><a href="br_managerBookRequest.do">도서추가요청</a></li>
            </ul>
        </ul>
        
        <ul class="subLv1">
            <li>공지사항</li>
            <ul class="subLv2">
                <li><a href="br_managerNoticeList.do">공지사항</a></li>
            </ul>
        </ul>
        
        
    </div>

</body>
</html>