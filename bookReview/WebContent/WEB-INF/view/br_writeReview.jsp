<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 리뷰작성 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">    
    <link rel="stylesheet" href="./css/br_writeReview.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>리뷰작성</title>
</head>
<body>

    <div class="wrap">
        <%@include file="br_menu.jsp" %>
        
        
        
        <div class="content">
            <!-- 작성영역 -->
            
            <h2>리뷰작성</h2>
            
                <form method="post">
                
                <table>
                    <tr>
                        <td>도서명</td>
                        <td><input type="text" name="bName" class="bName"></td>
                    </tr>
                    
                    <tr>
                        <td>리뷰내용</td>
                        <td><textarea rows="5" name="content"></textarea>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td class="btn">
                            <input type="submit" value="취소하기" class="submit" formaction="br_reviewList.jsp">
                            <input type="submit" value="등록하기" class="submit" formaction="br_reviewList.jsp">
                        </td>
                </table>
                
                </form>

            
            
        
            <br>
            <br>
        
        </div>

    </div>
	
	
	
</body>
</html>