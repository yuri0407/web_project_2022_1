<!--

	작성자 : 정유리
	변경이력 :
	프로그램 설명 : 메인&서브 메뉴
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
	<!-- header 영역  -->
		<header>
		<div class="headerBg"></div>
		<a href="br_main.do"><img src="./images/로고.png" alt="사이트로고"></a>
		<div class="head">ooo님 안녕하세요! | <a href="br_main.do">로그아웃</a></div>
		
		
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
					<li><a href="br_myReview.do">My리뷰</a></li>
					<li><a href="br_updateMemInfo.do">회원정보수정</a></li>
					<li><a href="br_memWithdrawal.do">회원탈퇴</a></li>
				</ul>
			</li>
			
		</ul>
		
	</nav>

</header>
	
	<!-- 서브메뉴영역  -->

	<div class="subMenu">			
		
			
		<ul class="subLv1">
			<li>도서</li>
			<ul class="subLv2">
				<li><a href="br_bookList.do">도서목록</a></li>
				<li><a href="br_reviewList.do">도서리뷰</a></li>
			</ul>
		</ul>
		
		<ul class="subLv1">
			<li>고객센터</li>
			<ul class="subLv2">
				<li><a href="br_questionList.do">Q&A</a></li>
				<li><a href="br_bookRequest.do">도서추가요청</a></li>
			</ul>
		</ul>
		
		<ul class="subLv1">
			<li>마이페이지</li>
			<ul class="subLv2">
				<li><a href="br_myReview.do">My리뷰</a></li>
				<li><a href="br_updateMemInfo.do">회원정보수정</a></li>
				<li><a href="br_memWithdrawal.do">회원탈퇴</a></li>
			</ul>
		</ul>
		
		
	</div>
</body>
</html>