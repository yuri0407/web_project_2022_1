<!--

	작성자 : 빈수윤
	변경이력 :
	프로그램 설명 : 회원가입 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_signUp.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>회원가입</title>
</head>
<body>
	
	<div class="wrap">
	<%@include file="header.jsp" %>
		<%@include file="br_menu.jsp" %>

	
	
	
	<!-- 회원가입 영역 -->
	<div class="content">
		<h2>회원가입</h2><br>
		<form method="post">

			<table>
				
				<tr>
					<td><label>아이디</label></td>
					<td><input type="text" name="id" class="textbox"></td>
					<td class="btn"><input type="submit" value="중복확인" class="submit" formaction="checkId.do"></td>
				</tr>
				
				<tr>
					<td><label>비밀번호</label></td>
					<td colspan="2"><input type="password" name="pwd" class="textbox"></td>
				</tr>
				
				<tr>
					<td><label>이메일</label></td>
					<td colspan="2"><input type="text" name="email" class="textbox"></td>
				</tr>
			
				
				
				<tr>
					<td colspan="3" class="btn">
						<input type="submit" value="메인으로" class="submit" formaction="br_main.do">
						<input type="submit" value="회원가입" class="submit" formaction="signUp.do">
					</td>
				</tr>
				
			</table>
		</form>
	
	</div>
</div>

	
</body>
</html>