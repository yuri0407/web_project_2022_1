<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 회원정보수정 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="./css/br_updateMemInfo.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>회원정보수정</title>
</head>
<body>

    <div class="wrap">
    <%@include file="header.jsp" %>
	    <%@include file="br_menu.jsp" %>
	
	
	
	<!-- 정보수정 틀  -->
	
        <div class="content">	
        
            <h2>회원정보수정</h2>
        
            
            <!-- 폼 영역  -->
            
            <form>
                <table>
                    <tr>
                        <td><label>닉네임</label></td>
                        <td><input type="text" name="name" class="textbox" value="유리"></td>
                    </tr>
                            
                    <tr>
                        <td><label>아이디</label></td>
                        <td><input type="text" name="id" class="id" readonly value="yuri0407"></td>
                    </tr>
                    
                    <tr>
                        <td><label>현재 비밀번호</label></td>
                        <td><input type="password" name="pwd" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td><label>변경할 비밀번호</label></td>
                        <td><input type="password" name="cPwd" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td><label>이메일</label></td>
                        <td><input type="email" name="fAddr" class="textbox" value="dbfl47@naver.com"></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td class="btn">
                            <input type="submit" class="submit" value="메인으로" formaction="br_main.jsp">
                            <input type="submit" class="submit" value="수정하기" formaction="br_main.jsp">
                        </td>
                    </tr>
            
                </table>
            
                
            </form>
        
            
        </div>
	
	</div>
	
	
</body>
</html>