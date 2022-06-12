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
		<%@include file="br_menu.jsp" %>

	
	
	
	<!-- 회원가입 영역 -->
	<div class="content">
		<h2>회원가입</h2><br>
		<form action="br_main.jsp" method="post">

			<table>
				<tr>
					<td style="width:150px"><label>닉네임</label></td>
					<td colspan="2"><input type="text" name="name" class="textbox"></td>
				</tr>
				
				<tr>
					<td><label>아이디</label></td>
					<td><input type="text" name="id" class="textbox"></td>
					<td class="btn"><button>중복확인</button></td>
				</tr>
				
				<tr>
					<td><label>비밀번호</label></td>
					<td colspan="2"><input type="password" name="pwd" class="textbox"></td>
				</tr>
				
				<tr>
					<td><label>비밀번호 확인</label></td>
					<td colspan="2"><input type="password" name="pwd" class="textbox"></td>
					
				</tr>
				
				<tr>
					<td><label>이메일</label></td>
					<td colspan="2"><input type="text" name="email1" class="textbox"></td>
				</tr>
			
				
				
				<tr>
					<td colspan="3" class="btn">
						<button onclick="location.href='br_main.jsp'">메인으로</button>
						<input type="submit" value="회원가입" class="submit">
					</td>
				</tr>
				
			</table>
		</form>
	
	</div>
</div>

	
</body>
</html>