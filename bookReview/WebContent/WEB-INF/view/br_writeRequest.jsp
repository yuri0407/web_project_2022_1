<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 도서요청 작성화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/br_insertNotice.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
<title>요청하기</title>
</head>
<body>

	<div class="wrap">
	<%@include file="header.jsp" %>
		<%@include file="br_menu.jsp" %>


    
    

    <div class="content">
        <h2>요청하기</h2>
    
        <form action="br_bookRequest.jsp" method="post">
        
            <table>
                <tr>
                <td>요청 내용</td>
                <td><textarea name = "detail" rows="4" cols=""></textarea></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td class="btn">
                        <input type="submit" value= "요청등록" class="submit">
                    </td>
                </tr>
            </table>
            </form>
        </div>
        
	</div>


	
</body>
</html>