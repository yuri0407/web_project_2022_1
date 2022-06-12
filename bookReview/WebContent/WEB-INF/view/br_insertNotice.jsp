<!--

	작성자 : 이로겸
	변경이력 :
	프로그램 설명 : 공지사항 등록 화면
	
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
	<%@include file="br_managerMenu.jsp" %>


    
    

    <div class="content">
        <h2>공지사항 등록</h2>
    
        <form action="br_managerNoticeList.do" method="post">
        
            <table>
                <tr>
                    <td>공지사항 제목</td>
                    <td><input type="text" name="mNum" class="textbox"></td>
                </tr>
                <tr>
                <td>공지사항 내용</td>
                <td><textarea name = "detail" rows="4" cols=""></textarea></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td class="btn">
                        <input type="submit" value= "등록하기" class="submit">
                    </td>
                </tr>
            </table>
            </form>
        </div>
</div>


	
</body>
</html>