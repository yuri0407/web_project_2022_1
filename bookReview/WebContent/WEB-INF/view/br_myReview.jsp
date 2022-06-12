<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 나의리뷰 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="./css/br_myReview.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>My리뷰</title>
</head>
<body>

    <div class="wrap">
        <%@include file="br_menu.jsp" %>
        
        
        
        
        <!-- 리뷰영역  -->
        
        <div class="content">
        
            <h2>My리뷰</h2>
        
        
            <!-- 검색영역 -->
            
            <div class="search">			
                <label>도서명</label>
                <input type="text" name="bName" size="30">
                <button>검색</button>
            </div>
            
            <div class="tablearea">
                <table>
                    <tr>
                        <th style="width: 3%">No.</th>
                        <th style="width: 13%">닉네임</th>
                        <th style="width: 30%">도서명</th>
                        <th>리뷰내용</th>
                    </tr>
                    <tr class="row" onclick="location.href='br_modifyReview.jsp'">
                        <td>1</td>
                        <td>유리</td>
                        <td>the midnight library</td>
                        <td style="width:200px; height: 25px;">
                            우리의 모든 what if 경우들을 생각해보게 된다. 내가 이랬다면, 저랬다면. 캐릭터랑 서사가 어렵지 않아서 주인공이 물리학,철학 이야기하는 부분도 이해가 잘 됩니다.
                            하루하루가 무료한 사람, 어디론가 떠나고 싶은 사람, 하루에 사랑이 부족하다고 느끼는 사람들에게 추천합니다.</td>
                    </tr>
                </table>
            </div>
        
        </div>
	
    </div>
	
	
	
</body>
</html>