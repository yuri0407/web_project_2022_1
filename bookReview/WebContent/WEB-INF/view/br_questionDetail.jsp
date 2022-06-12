<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 질문상세보기
	
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
	<title>Q&A</title>
</head>
<body>
	<div class="wrap">
		<%@include file="br_menu.jsp" %>



        <!-- 질문목록 영역 -->
        <div class="content">
            <div class="btn">
                <button onclick="location.href='br_questionList.jsp'">목록으로</button>
            </div>

            
            <div class="detail">
                <h2>로그인 관련해서 질문있습니다.</h2>
                <div class="name">유리</div>
                <div class="date">등록일 : 2022-05-15</div>
                <hr>

                <div class="contentbox">
                    아이디를 잊어버려서 찾고 싶은데 이 사이트에 가입할 때 등록했던 이메일이 지금은 사용할 수 없는
                    메일주소라서 아이디를 찾을 수가 없습니다.. 어떻게 해야 할지 알려주시면 감사하겠습니다.
                </div>

                <hr>
                <div class="label">관리자답변</div>
                <div class="answerbox">
                </div>
            </div>

		
        
	
        </div>




	</div>
	
</body>
</html>