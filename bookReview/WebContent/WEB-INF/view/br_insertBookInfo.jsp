<!--

	작성자 : 이로겸
	변경이력 :
	프로그램 설명 : 관리자 도서정보 등록
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./css/br_insertBookInfo.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
    <title>도서정보등록</title>
</head>
<body>
    <div class="wrap">
    <%@include file="header.jsp" %>
    <%@include file="br_managerMenu.jsp" %>

        
        
        <!-- 입력 영역 -->
        <div class="content">
            <h2>도서정보 등록</h2>
        
            <form method="post">
            
                <table>
                    <tr>
                        <td>도서명</td>
                        <td><input type="text" name="bname" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td>저자</td>
                        <td><input type="text" name="writer" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td>출판사</td>
                        <td><input type="text" name="publisher" class="textbox"></td>
                    </tr>

                    <tr>
                        <td>출판일</td>
                        <td><input type="text" name="pdate" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td>분류번호</td>
                        <td>
                            <select name="category">
                                <option>100</option>
                                <option>200</option>
                                <option>300</option>
                                <option>400</option>
                                <option>500</option>
                                <option>600</option>
                                <option>700</option>
                                <option>800</option>
                                <option>900</option>
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                    <td>도서 설명</td>
                    <td><textarea name = "bContent" rows="4" cols=""></textarea></td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td class="btn">
                        	<input type="submit" value="돌아가기" formaction="br_managerBookList.do" class="submit">
                            <input type="submit" value= "등록하기" class="submit" formaction="bookSave.do">
                        </td>
                    </tr>
                </table>
                
            </form>
        
        </div>
    </div>
	
</body>
</html>