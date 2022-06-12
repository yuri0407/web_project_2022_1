<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 회원탈퇴 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="./css/br_memWithdrawal.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>회원 탈퇴</title>
</head>
<body>

    <div class="wrap">
        <%@include file="br_menu.jsp" %>
        
        
        
        <!-- 작성영역 -->
        
        <div class="content">	
            <h2>회원탈퇴</h2>
        
            
                    <h4>회원탈퇴 시 주의사항</h4>
                    <div>
                        -회원탈퇴를 하시면 회원의 정보들이 영구히 삭제됩니다.<br>
                        -탈퇴 후 다시 회원가입을 하기 전까지는 본 사이트의 기능 이용이 제한됩니다.<br>
                    </div>
                
                <div class="btn">
                    <button onclick="location.href='br_main.jsp'">메인으로</button>
                    <button onclick="location.href='br_main.jsp'">탈퇴하기</button>
                </div>
            
        </div>
	
	
</body>
</html>