<!--

	작성자 : 빈수윤
	변경이력 :
	프로그램 설명 : 아이디 비밀번호 찾기 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_idpwFind.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>아이디/비밀번호 찾기</title>
</head>
<body>
	<div class="wrap">
	
		<%@include file="br_menu.jsp" %>

	
	
		<!-- 아이디/비밀번호 찾기 영역 -->
		<div class="content">
		
				<!-- 아이디 찾기 영역 -->
				
				<h2>아이디찾기</h2>
				<form>
				
					<table>
						<tr>
							<td>이메일</td>
							<td>
								<input type="text" name="email1" class="textbox">
							</td>
						</tr>
						
						<tr>
							<td></td>
							<td  class="btn">
								<input type="submit" class="submit" value="찾기">
							</td>
						</tr>
					</table>
					
				</form>
					
					
					
				<!-- 비밀번호 찾기영역 -->
				
				<h2>비밀번호찾기</h2>
				<form >
				
					<table>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="id" class="textbox"></td>
						</tr>
						
						<tr>
							<td>이메일</td>
							<td>
								<input type="text" name="email1" class="textbox">
							</td>
						</tr>
						
						<tr>
							<td></td>
							<td class="btn">
								<input type="submit" class="submit" value="찾기">
							</td>
						</tr>
					</table>
				
				</form>
		</div>
		
	
	
	
	</div>
</body>
</html>