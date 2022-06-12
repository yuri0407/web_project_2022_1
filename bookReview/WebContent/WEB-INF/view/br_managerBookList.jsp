<!--

	작성자 : 이로겸
	변경이력 :
	프로그램 설명 : 관리자 도서 목록
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_managerBookList.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>도서목록</title>
</head>
<body>

	<div class="wrap">
	
		<%@include file="br_managerMenu.jsp" %>
	
	
	
	
	<!-- 리뷰영역  -->
	
	<div class="content">
	
		<h2>도서목록</h2>
	
	
		<!-- 검색영역 -->
		
		<div class="search">			
			<label>도서명</label>
			<input type="text" name="bName" size="30">
			<button>검색</button>
			<button onclick="location.href='br_insertBookInfo.do'">등록하기</button>
		</div>

		
        <div class="tablearea">
            <table>
                <tr>
                    <th style="width: 3%">bNo.</th>
                    <th style="width: 30%">도서명</th>
                    <th style="width: 15%">저자명</th>
                    <th style="width: 15%">출판사</th>
                    <th style="width: 10%">출판일</th>
                    <th style="width: 7%">분류번호</th>
                </tr>
                <tr class="row" onclick="location.href='br_editBookInfo.jsp'">
                    <td>1</td>
                    <td>the midnight library</td>
                    <td>Haig, matt</td>
                    <td>Cannongate</td>
                    <td>2021-02-18</td>
                    <td>800</td>
                </tr>

            </table>
        </div>
	
	</div>
	
	
	
	</div>
	
</body>
</html>