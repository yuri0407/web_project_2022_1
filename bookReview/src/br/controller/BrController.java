package br.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.service.BookDeleteService;
import br.service.BookListService;
import br.service.BookSaveService;
import br.service.BrService;
import br.service.ExplanationService;
import br.service.MemberInsertService;
import br.service.NoticeListService;
import br.service.QuestionListService;
import br.service.ReviewListService;
import br.service.ReviewSaveService;
import br.service.ReviewSearchService;

@WebServlet("*.do")
public class BrController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = null;

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String uri = request.getRequestURI();
    	String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));
    	
    	
    	//화면요청 메인화면
    	if(com!=null && com.trim().equals("br_main")) {
    		BrService service = new NoticeListService();
    		service.execute(request, response);
    		viewPage = "./WEB-INF/view/br_main.jsp";
    	}
    	
    	
    	
    	//도서목록
    	else if(com!=null && com.trim().equals("br_bookList")) {
    		BrService service = new BookListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_bookList.jsp";
    	}
    	
    	
    	//도서리뷰
    	else if(com!=null && com.trim().equals("br_reviewList")) {
    		BrService service = new ReviewListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_reviewList.jsp";
    	}
    	
    	//리뷰검색
    	else if(com!=null && com.trim().equals("searchReview")) {
    		BrService service = new ReviewSearchService();
    		service.execute(request, response);
//    		viewPage = "/WEB-INF/view/br_writeReview.jsp";
    	}
    	
    	//리뷰쓰기
    	else if(com!=null && com.trim().equals("br_writeReview")) {
    		viewPage = "/WEB-INF/view/br_writeReview.jsp";
    	}
    	
    	//리뷰등록
    	else if(com!=null && com.trim().equals("reviewSave")) {
    		BrService service = new ReviewSaveService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_reviewSave.jsp";
    	}
    	
    	
    	
    	//Q&A
    	else if(com!=null && com.trim().equals("br_questionList")) {
    		BrService service = new QuestionListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_questionList.jsp";
    	}
    	
    	//도서추가요청
    	else if(com!=null && com.trim().equals("br_bookRequest")) {
    		viewPage = "/WEB-INF/view/br_bookRequest.jsp";
    	}
    	
    	//회원정보수정
    	else if(com!=null && com.trim().equals("br_updateMemInfo")) {
    		viewPage = "/WEB-INF/view/br_updateMemInfo.jsp";
    	}
    	
    	//회원탈퇴
    	else if(com!=null && com.trim().equals("br_memWithdrawal")) {
    		viewPage = "/WEB-INF/view/br_memWithdrawal.jsp";
    	}
    	
    	//공지사항 목록(사용자)
    	else if(com!=null && com.trim().equals("br_noticeList")) {
    		BrService service = new NoticeListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_noticeList.jsp";
    	}
    	
    	//공지사항 상세(사용자)
    	else if(com!=null && com.trim().equals("br_noticeDetail")) {
    		BrService service = new NoticeListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_noticeDetail.jsp";
    	}
    	
    	//질문 상세보기
    	else if(com!=null && com.trim().equals("br_questionDetail")) {
    		viewPage = "/WEB-INF/view/br_questionDetail.jsp";
    	}
    	
    	//도서상세보기
    	else if(com!=null && com.trim().equals("br_bookExplanation")) {
    		BrService service = new ExplanationService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_bookExplanation.jsp";
    	}
    	
    	
    	//로그인
    	else if(com!=null && com.trim().equals("br_login")) {
    		viewPage = "/WEB-INF/view/br_login.jsp";
    	}
    	
    	//로그인 처리
    	else if(com!=null && com.trim().equals("br_loginPro")) {
    		viewPage = "/WEB-INF/view/br_loginPro.jsp";
    	}
    	
    	
    	
    	//로그아웃 처리
    	else if(com!=null && com.trim().equals("logout")) {
    		viewPage = "/WEB-INF/view/br_logout.jsp";
    	}
    	
    	
    	//회원가입
    	else if(com!=null && com.trim().equals("br_signUp")) {
    		viewPage = "/WEB-INF/view/br_signUp.jsp";
    	}
    	
    	//회원가입 아이디 검사
    	else if(com!=null && com.trim().equals("checkId")) {
    		viewPage = "/WEB-INF/view/br_checkId.jsp";
    	}
    	
    	//회원가입 비밀번호 검사
    	else if(com!=null && com.trim().equals("signUpPro")) {
    		viewPage = "/WEB-INF/view/br_signUpPro.jsp";
    	}
    	
    	//회원가입 처리
    	else if(com!=null && com.trim().equals("signUp")) {
    		BrService service = new MemberInsertService();
    		service.execute(request, response);
    		viewPage = "br_main.do";
    	}
    	
    	
    	//아이디 비밀번호 찾기
    	else if(com!=null && com.trim().equals("br_idpwFind")) {
    		viewPage = "/WEB-INF/view/br_idpwFind.jsp";
    	}
    	
    	
    	
    	
    	//관리자 로그인
    	else if(com!=null && com.trim().equals("br_managerLogin")) {
    		viewPage = "/WEB-INF/view/br_managerLogin.jsp";
    	}
    	
    	//관리자 로그인 처리
    	else if(com!=null && com.trim().equals("br_managerLoginPro")) {
    		viewPage = "/WEB-INF/view/br_managerLoginPro.jsp";
    	}
    	
    	
    	
    	//도서목록(관리자)
    	else if(com!=null && com.trim().equals("br_managerBookList")) {
    		BrService service = new BookListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_managerBookList.jsp";
    	}
    	
    	//질문목록(관리자)
    	else if(com!=null && com.trim().equals("br_managerQuestionList")) {
    		viewPage = "/WEB-INF/view/br_managerQuestionList.jsp";
    	}
    	
    	//도서추가요청(관리자)
    	else if(com!=null && com.trim().equals("br_managerBookRequest")) {
    		viewPage = "/WEB-INF/view/br_managerBookRequest.jsp";
    	}
    	
    	//공지사항(관리자)
    	else if(com!=null && com.trim().equals("br_managerNoticeList")) {
    		viewPage = "/WEB-INF/view/br_managerNoticeList.jsp";
    	}
    	
    	
    	
    	//도서정보 등록 화면
    	else if(com!=null && com.trim().equals("br_insertBookInfo")) {
    		viewPage = "/WEB-INF/view/br_insertBookInfo.jsp";
    	}
    	
    	//정보등록 처리
    	else if(com!=null && com.trim().equals("bookSave")) {
    		BrService service = new BookSaveService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_bookSave.jsp";
    	}

    	//도서정보 수정
    	else if(com!=null && com.trim().equals("br_editBookInfo")) {
    		BrService service = new ExplanationService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_editBookInfo.jsp";
    	}
    	
    	//도서정보 삭제
    	else if(com!=null && com.trim().equals("delete")) {
    		BrService service = new BookDeleteService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_bookDelete.jsp";
    	}
    	
    	
    	
    	//공지사항 등록
    	else if(com!=null && com.trim().equals("br_insertNotice")) {
    		viewPage = "/WEB-INF/view/br_insertNotice.jsp";
    	}
    	
    	//공지사항 수정
    	else if(com!=null && com.trim().equals("br_editNotice")) {
    		viewPage = "/WEB-INF/view/br_editNotice.jsp";
    	}
    	
    	
    	RequestDispatcher rd = request.getRequestDispatcher(viewPage);
    	rd.forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
