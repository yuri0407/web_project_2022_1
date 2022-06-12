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
    
        <%@include file="br_menu.jsp" %>

        
        
        <!-- 입력 영역 -->
        <div class="content">
            <h2>도서정보 등록</h2>
        
            <form action="br_managerBookList.do" method="post">
            
                <table>
                    <tr>
                        <td>도서명</td>
                        <td><input type="text" name="mNum" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td>저자</td>
                        <td><input type="text" name="id" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td>출판사</td>
                        <td><input type="text" name="pwd" class="textbox"></td>
                    </tr>

                    <tr>
                        <td>출판일</td>
                        <td><input type="text" name="pwd" class="textbox"></td>
                    </tr>
                    
                    <tr>
                        <td>분류번호</td>
                        <td>
                            <select>
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
                    <td><textarea name = "detail" rows="4" cols=""></textarea></td>
                    </tr>
                    
                    <tr>
                    <td>도서 이미지</td>
                    <td><input type="text" name="img" class="textbox"></td>
                    <td><input type="submit" value="찾아보기" class="submit"></td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td class="btn">
                            <button onclick="location.href='br_managerBookList.do'">돌아가기</button>
                            <input type="submit" value= "등록하기" class="submit">
                        </td>
                    </tr>
                </table>
                
            </form>
        
        </div>
    </div>
	
</body>
</html>