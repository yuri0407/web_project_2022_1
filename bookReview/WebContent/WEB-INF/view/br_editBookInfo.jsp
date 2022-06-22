<!--

	작성자 : 이로겸
	변경이력 :
	프로그램 설명 : 관리자 도서정보 수정화면
	
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
    <title>도서정보수정</title>
</head>
<body>
    <div class="wrap">
        <%@include file="header.jsp" %>
        <%@include file="br_managerMenu.jsp" %>

        
        
        <!-- 입력 영역 -->
        <div class="content">
            <h2>도서정보 수정</h2>
        
            <form action="br_managerBookList.do" method="post">
            <c:forEach var="dto" items="${dtos}">
                <table>
        
                    <tr>
                        <td><input type="hidden" name="bno" class="textbox" value="${dto.bno }"></td>
                    </tr>
                    
                    <tr>
                        <td>도서명</td>
                        <td><input type="text" name="bname" class="textbox" value="${dto.bname }"></td>
                    </tr>
                    
                    <tr>
                        <td>저자</td>
                        <td><input type="text" name="writer" class="textbox" value="${dto.writer }"></td>
                    </tr>
                    
                    <tr>
                        <td>출판사</td>
                        <td><input type="text" name="publisher" class="textbox" value="${dto.publisher }"></td>
                    </tr>

                    <tr>
                        <td>출판일</td>
                        <td><input type="text" name="pDate" class="textbox" value="${dto.pdate }"></td>
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
                    <td><textarea name = "detail" rows="4" cols="">${dto.bContent}</textarea></td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td class="btn">
                            <button onclick="location.href='br_managerBookList.do'">돌아가기</button>
                            <input type="submit" value= "수정하기" class="submit">
                            <a href="delete.do?bno=${dto.bno}"><button type="button">삭제하기</button></a>
                        </td>
                    </tr>
                    </c:forEach>
                </table>
                
            </form>
        
        </div>
    </div>

	
</body>
</html>