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
    	
    	
    	//ȭ���û ����ȭ��
    	if(com!=null && com.trim().equals("br_main")) {
    		BrService service = new NoticeListService();
    		service.execute(request, response);
    		viewPage = "./WEB-INF/view/br_main.jsp";
    	}
    	
    	
    	
    	//�������
    	else if(com!=null && com.trim().equals("br_bookList")) {
    		BrService service = new BookListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_bookList.jsp";
    	}
    	
    	
    	//��������
    	else if(com!=null && com.trim().equals("br_reviewList")) {
    		BrService service = new ReviewListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_reviewList.jsp";
    	}
    	
    	//����˻�
    	else if(com!=null && com.trim().equals("searchReview")) {
    		BrService service = new ReviewSearchService();
    		service.execute(request, response);
//    		viewPage = "/WEB-INF/view/br_writeReview.jsp";
    	}
    	
    	//���侲��
    	else if(com!=null && com.trim().equals("br_writeReview")) {
    		viewPage = "/WEB-INF/view/br_writeReview.jsp";
    	}
    	
    	//������
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
    	
    	//�����߰���û
    	else if(com!=null && com.trim().equals("br_bookRequest")) {
    		viewPage = "/WEB-INF/view/br_bookRequest.jsp";
    	}
    	
    	//ȸ����������
    	else if(com!=null && com.trim().equals("br_updateMemInfo")) {
    		viewPage = "/WEB-INF/view/br_updateMemInfo.jsp";
    	}
    	
    	//ȸ��Ż��
    	else if(com!=null && com.trim().equals("br_memWithdrawal")) {
    		viewPage = "/WEB-INF/view/br_memWithdrawal.jsp";
    	}
    	
    	//�������� ���(�����)
    	else if(com!=null && com.trim().equals("br_noticeList")) {
    		BrService service = new NoticeListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_noticeList.jsp";
    	}
    	
    	//�������� ��(�����)
    	else if(com!=null && com.trim().equals("br_noticeDetail")) {
    		BrService service = new NoticeListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_noticeDetail.jsp";
    	}
    	
    	//���� �󼼺���
    	else if(com!=null && com.trim().equals("br_questionDetail")) {
    		viewPage = "/WEB-INF/view/br_questionDetail.jsp";
    	}
    	
    	//�����󼼺���
    	else if(com!=null && com.trim().equals("br_bookExplanation")) {
    		BrService service = new ExplanationService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_bookExplanation.jsp";
    	}
    	
    	
    	//�α���
    	else if(com!=null && com.trim().equals("br_login")) {
    		viewPage = "/WEB-INF/view/br_login.jsp";
    	}
    	
    	//�α��� ó��
    	else if(com!=null && com.trim().equals("br_loginPro")) {
    		viewPage = "/WEB-INF/view/br_loginPro.jsp";
    	}
    	
    	
    	
    	//�α׾ƿ� ó��
    	else if(com!=null && com.trim().equals("logout")) {
    		viewPage = "/WEB-INF/view/br_logout.jsp";
    	}
    	
    	
    	//ȸ������
    	else if(com!=null && com.trim().equals("br_signUp")) {
    		viewPage = "/WEB-INF/view/br_signUp.jsp";
    	}
    	
    	//ȸ������ ���̵� �˻�
    	else if(com!=null && com.trim().equals("checkId")) {
    		viewPage = "/WEB-INF/view/br_checkId.jsp";
    	}
    	
    	//ȸ������ ��й�ȣ �˻�
    	else if(com!=null && com.trim().equals("signUpPro")) {
    		viewPage = "/WEB-INF/view/br_signUpPro.jsp";
    	}
    	
    	//ȸ������ ó��
    	else if(com!=null && com.trim().equals("signUp")) {
    		BrService service = new MemberInsertService();
    		service.execute(request, response);
    		viewPage = "br_main.do";
    	}
    	
    	
    	//���̵� ��й�ȣ ã��
    	else if(com!=null && com.trim().equals("br_idpwFind")) {
    		viewPage = "/WEB-INF/view/br_idpwFind.jsp";
    	}
    	
    	
    	
    	
    	//������ �α���
    	else if(com!=null && com.trim().equals("br_managerLogin")) {
    		viewPage = "/WEB-INF/view/br_managerLogin.jsp";
    	}
    	
    	//������ �α��� ó��
    	else if(com!=null && com.trim().equals("br_managerLoginPro")) {
    		viewPage = "/WEB-INF/view/br_managerLoginPro.jsp";
    	}
    	
    	
    	
    	//�������(������)
    	else if(com!=null && com.trim().equals("br_managerBookList")) {
    		BrService service = new BookListService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_managerBookList.jsp";
    	}
    	
    	//�������(������)
    	else if(com!=null && com.trim().equals("br_managerQuestionList")) {
    		viewPage = "/WEB-INF/view/br_managerQuestionList.jsp";
    	}
    	
    	//�����߰���û(������)
    	else if(com!=null && com.trim().equals("br_managerBookRequest")) {
    		viewPage = "/WEB-INF/view/br_managerBookRequest.jsp";
    	}
    	
    	//��������(������)
    	else if(com!=null && com.trim().equals("br_managerNoticeList")) {
    		viewPage = "/WEB-INF/view/br_managerNoticeList.jsp";
    	}
    	
    	
    	
    	//�������� ��� ȭ��
    	else if(com!=null && com.trim().equals("br_insertBookInfo")) {
    		viewPage = "/WEB-INF/view/br_insertBookInfo.jsp";
    	}
    	
    	//������� ó��
    	else if(com!=null && com.trim().equals("bookSave")) {
    		BrService service = new BookSaveService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_bookSave.jsp";
    	}

    	//�������� ����
    	else if(com!=null && com.trim().equals("br_editBookInfo")) {
    		BrService service = new ExplanationService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_editBookInfo.jsp";
    	}
    	
    	//�������� ����
    	else if(com!=null && com.trim().equals("delete")) {
    		BrService service = new BookDeleteService();
    		service.execute(request, response);
    		viewPage = "/WEB-INF/view/br_bookDelete.jsp";
    	}
    	
    	
    	
    	//�������� ���
    	else if(com!=null && com.trim().equals("br_insertNotice")) {
    		viewPage = "/WEB-INF/view/br_insertNotice.jsp";
    	}
    	
    	//�������� ����
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
