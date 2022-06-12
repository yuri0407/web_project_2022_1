<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 질문작성 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/br_insertNotice.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
<title>공지사항 작성</title>
</head>
<body>
<div class="wrap">
	<%@include file="br_menu.jsp" %>


    
    

    <div class="content">
        <h2>질문하기</h2>
    
        <form action="br_questionList.jsp" method="post">
        
            <table>
                <tr>
                <td>질문 내용</td>
                <td><textarea name = "detail" rows="4" cols=""></textarea></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td class="btn">
                        <input type="submit" value= "질문등록" class="submit">
                    </td>
                </tr>
            </table>
            </form>
        </div>
</div>


	
</body>
</html>