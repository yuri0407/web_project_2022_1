<!--

	작성자 : 빈수윤
	변경이력 :
	프로그램 설명 : 사용자 로그인 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_login.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>로그인</title>
</head>
<body>
	
	<div class="wrap">
		<%@include file="br_menu.jsp" %>

	
	
	<!-- 로그인 영역 -->
	<div class="content">
	
		<h2>로그인</h2>
		<div class="tablearea">
			
			<table>
				<tr>
					<td><label>아이디</label></td>
					<td><input type="text" name="id" class="textbox"></td>
				</tr>
				
				<tr>
					<td><label>비밀번호</label></td>
					<td><input type="password" name="pwd" class="textbox"></td>
				</tr>
			</table>
		

			<div class="btn">
				<button onclick="location.href='br_main.do'">로그인</button>
				<button onclick="location.href='br_idpwFind.do'" class="searchbtn">아이디/비밀번호 찾기</button>
				<button onclick="location.href='br_SignUp.do'">회원가입</button>
			</div>
			
			<div class="manager">
				<button onclick="location.href='br_managerLogin.do'">관리자로그인</button>
			</div>

		</div>
		
	</div>

	
	</div>
	
</body>
</html>