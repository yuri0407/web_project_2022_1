<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 리뷰수정 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">    
    <link rel="stylesheet" href="./css/br_modifyReview.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>리뷰수정</title>
</head>
<body>

    <div class="wrap">
        <%@include file="br_menu.jsp" %>
        
        
        <div class="content">
            
            <!-- 작성영역 -->
            <h2>리뷰수정</h2>
            
                <form action="br_myReview.jsp">
                
                <table>
                    <tr>
                        <td>도서명</td>
                        <td><input type="text" name="bName" class="bName" value="the midnight library"></td>
                    </tr>
                    
                    <tr>
                        <td>리뷰내용</td>
                        <td><textarea rows="5" name="content">우리의 모든 what if 경우들을 생각해보게 된다. 내가 이랬다면, 저랬다면. 캐릭터랑 서사가 어렵지 않아서 주인공이 물리학,철학 이야기하는 부분도 이해가 잘 됩니다. 하루하루가 무료한 사람, 어디론가 떠나고 싶은 사람, 하루에 사랑이 부족하다고 느끼는 사람들에게 추천합니다.</textarea>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td class="btn">
	                        <a href="br_myReview.jsp"><button type="button">취소하기</button></a>
                            <input type="submit" class="submit" value="수정하기">
	                        <a href="br_myReview.jsp"><button type="button">삭제하기</button></a>
                        </td>
                    </tr>
                </table>
                
                </form>

            
            
        
            <br>
            <br>
        
        </div>

    </div>
	
	
</body>
</html>