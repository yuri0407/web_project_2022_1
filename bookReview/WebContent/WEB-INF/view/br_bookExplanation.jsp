<!--

	작성자 : 빈수윤
	변경이력 :
	프로그램 설명 : 도서설명 화면
	
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="UTF-8">	
    <link rel="stylesheet" href="./css/br_bookExplanation.css">
    <script src="./script/jquery-3.6.0.js"></script>
    <script src="./script/script.js"></script>
	<title>도서설명</title>
</head>
<body>
	
	<div class="wrap">
	
	 <%@include file="br_menu.jsp" %>
	 

	


	
	<!-- 로그인 영역 -->
	<div class="content">
	
		<h2>도서소개</h2>
		<table>
			<tr>
				<td rowspan="5" class="img"><img src="./images/the midnight library.jpg" alt="Image"></td>
				<td class="td">도서명</td>
				<td><span>the midnight library</span></td>
			</tr>
			
			<tr>
				<td class="td">저자</td>
				<td><span>Haig, Matt</span></td>
			</tr>
			
			<tr>
				<td class="td">출판사</td>
				<td><span>Cannongate</span></td>
			</tr>

			<tr>
				<td class="td">출판일</td>
				<td><span>2021-02-18</span></td>
			</tr>
			
			<tr>
				<td class="td">분류번호</td>
				<td><span>800</span></td>
			</tr>
			
      </table>
		<div class="explanation">
			밤 12시, 죽기 바로 전에만 열리는 마법의 도서관에서
			인생의 두 번째 기회를 드립니다<br>
			<br><br>
			★★★★★국내 주요 서점 종합 베스트셀러 1위, 2021년 올해의 책 선정<br>
			★★★★★《뉴욕타임스》 베스트셀러 1위, 영국 아마존 종합 베스트셀러 1위<br>
			<br><br>
			매트 헤이그의 소설 《미드나잇 라이브러리》는 2021년 4월 출간 이후 10개월 만에 30만 독자의 마음을 사로잡으며 눈물과 웃음, 가슴 뭉클한 감동을 선사하고 있다.
			죽기로 결심한 주인공 ‘노라 시드’가 삶과 죽음 사이에 존재하는 미스터리한 도서관 ‘미드나잇 라이브러리’에서 눈을 뜨며 인생의 두 번째 기회를 얻는 이 소설은,
			노라의 가장 완벽한 삶을 찾는 모험을 따라가며 ‘살아 있음’과 ‘살아가는 것’에 대한 깊은 통찰을 보여준다.
			<br><br>
			“책을 덮는 순간 내일이 기대된다!” “내 인생의 반려책을 만났다” “다시 살아봐야겠다는 힘을 얻었다” 등 이 책을 읽은 독자들의 뜨거운 반응에 힘입어
			주요 서점에서 2021 올해의 책으로 선정되었고, 그 열기는 여전히 계속되고 있다. 타인의 삶에 대한 공감, 자신의 삶에 대한 긍정,
			살아 있는 것 자체가 살아야 할 이유라는 깊은 통찰력까지 매트 헤이그 작가가 보내는 공감과 위로의 메시지는 세대와 성별을 아우르며 전 세계 독자들의 마음을 사로잡았다.
			《뉴욕타임스》 베스트셀러 1위, 영국 아마존 종합 베스트셀러 1위를 기록했고, 미국 아마존과 《뉴욕타임스》 60주 이상, 독일 《슈피겔》에서도 38주 연속 장기 베스트셀러에 올랐다.
			현재 덴마크, 이탈리아, 스페인, 루마니아, 타이완, 이란 등 세계 각지에서 출간되며 글로벌한 인기를 누리고 있다.

		</div>
		
	</div>
	</div>
	
</body>
</html>