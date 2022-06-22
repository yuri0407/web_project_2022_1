<!--

	작성자 : 빈수윤
	변경이력 :
	프로그램 설명 : 사이트 메인 화면
	
-->
<%@page import="br.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_main.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
    <title>도서리뷰사이트입니다.</title>
</head>
<body>

    <div class="wrap">
		<%@include file="header.jsp" %>
			
			<!-- 메인메뉴영역  -->
			<nav>			
            
				<ul>
					<li class="lv1">
						<a href="#">도서</a>
						<ul class="lv2">
							<li><a href="br_bookList.do">도서목록</a></li>
							<li><a href="br_reviewList.do">도서리뷰</a></li>
						</ul>
					</li>
					<li class="lv1">
						<a href="#">고객센터</a>
						<ul class="lv2">
							<li><a href="br_questionList.do">Q&A</a></li>
							<li><a href="br_bookRequest.do">도서추가요청</a></li>
						</ul>
					</li>
					<li class="lv1">
						<a href="#">마이페이지</a>
						<ul class="lv2">
							<li><a href="br_updateMemInfo.do">회원정보수정</a></li>
							<li><a href="br_memWithdrawal.do">회원탈퇴</a></li>
						</ul>
					</li>
					
				</ul>
				
			</nav>
	
		</header>
			
	

		<div class="main">
			<h1>도서리뷰사이트에 오신 것을 환영합니다!</h1>
		</div>
	
	<!-- content 영역 -->
	<div class="content">
		<!-- 공지사항 영역 -->
		<div class="notice">
			<h2>공지사항</h2>
			<button onclick="location.href='br_noticeList.do'">more></button>

			<div class="tablearea">
				<table>
					<c:forEach var="dto" items="${dtos}">
					<tr class="row" onclick="location.href='br_noticeDetail.do'">
						<td>${dto.nTitle }</td>
						<td style="width: 130px">${dto.nDate }</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		
		</div>
	
		<!-- 문의게시판 영역 -->
		<div class="qna">
			<h2>문의게시판</h2>
			<button onclick="location.href='br_questionList.do'">more></button>

			<div class="tablearea">
				<table>
					<tr class="row" onclick="location.href='br_questionDetail.do'">
						<td>로그인과 관련해서 질문있습니다.</td>
						<td style="width: 130px">2022-05-15</td>
					</tr>
				</table>
			</div>
		
		</div>
	</div>

		
		
		
     
  </div>
   
   
</body>
</html>