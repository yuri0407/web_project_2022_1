<!--

	작성자 : 이로겸
	변경이력 :
	프로그램 설명 : 관리자 로그인 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="./css/br_managerLogin.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>관리자 로그인</title>
</head>
<body>
	
    <div class="wrap">
        <%@include file="br_menu.jsp" %>
        
        
        
        <!-- 로그인 영역 -->
        <div class="content">
            <h2>관리자 로그인</h2>
            
            <form action="br_managerBookList.do">
                <table>
                    
                    <tr>
                        <td>관리자 번호</td>
                        <td><input type="text" name="mNum" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td>아이디</td>
                        <td><input type="text" name="id" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td>비밀번호</td>
                        <td><input type="text" name="pwd" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td class="btn"><input type="submit" value="로그인" class="submit"></td>
                    </tr>
                    
                </table>
            </form>
        </div>
	
    </div>


	
</body>
</html>