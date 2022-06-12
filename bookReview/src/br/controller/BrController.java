package br.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.service.BrService;

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
    		viewPage = "/WEB-INF/view/br_main.jsp";
    	}
    	
    	//도서목록
    	else if(com!=null && com.trim().equals("br_bookList")) {
    		viewPage = "/WEB-INF/view/br_bookList.jsp";
    	}
    	
    	//도서리뷰
    	else if(com!=null && com.trim().equals("br_reviewList")) {
    		viewPage = "/WEB-INF/view/br_reviewList.jsp";
    	}
    	
    	//Q&A
    	else if(com!=null && com.trim().equals("br_questionList")) {
    		viewPage = "/WEB-INF/view/br_questionList.jsp";
    	}
    	
    	//도서추가요청
    	else if(com!=null && com.trim().equals("br_bookRequest")) {
    		viewPage = "/WEB-INF/view/br_bookRequest.jsp";
    	}
    	
    	//my리뷰
    	else if(com!=null && com.trim().equals("br_myReview")) {
    		viewPage = "/WEB-INF/view/br_myReview.jsp";
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
    		viewPage = "/WEB-INF/view/br_noticeList.jsp";
    	}
    	
    	//공지사항 상세(사용자)
    	else if(com!=null && com.trim().equals("br_noticeDetail")) {
    		viewPage = "/WEB-INF/view/br_noticeDetail.jsp";
    	}
    	
    	//질문 상세보기
    	else if(com!=null && com.trim().equals("br_questionDetail")) {
    		viewPage = "/WEB-INF/view/br_questionDetail.jsp";
    	}
    	
    	//도서상세보기
    	else if(com!=null && com.trim().equals("br_bookExplanation")) {
    		viewPage = "/WEB-INF/view/br_bookExplanation.jsp";
    	}
    	
    	//로그인
    	else if(com!=null && com.trim().equals("br_login")) {
    		viewPage = "/WEB-INF/view/br_login.jsp";
    	}
    	
    	//회원가입
    	else if(com!=null && com.trim().equals("br_signUp")) {
    		viewPage = "/WEB-INF/view/br_signUp.jsp";
    	}
    	
    	//아이디 비밀번호 찾기
    	else if(com!=null && com.trim().equals("br_idpwFind")) {
    		viewPage = "/WEB-INF/view/br_idpwFind.jsp";
    	}
    	
    	
    	
    	
    	//관리자 로그인
    	else if(com!=null && com.trim().equals("br_managerLogin")) {
    		viewPage = "/WEB-INF/view/br_managerLogin.jsp";
    	}
    	
    	//도서목록(관리자)
    	else if(com!=null && com.trim().equals("br_managerBookList")) {
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
    	
    	//공지사항(관리자)
    	else if(com!=null && com.trim().equals("br_managerNoticeList")) {
    		viewPage = "/WEB-INF/view/br_managerNoticeList.jsp";
    	}
    	
    	
    	RequestDispatcher rd = request.getRequestDispatcher(viewPage);
    	rd.forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
