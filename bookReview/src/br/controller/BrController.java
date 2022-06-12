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
    	
    	
    	//ȭ���û ����ȭ��
    	if(com!=null && com.trim().equals("br_main")) {
    		viewPage = "/WEB-INF/view/br_main.jsp";
    	}
    	
    	//�������
    	else if(com!=null && com.trim().equals("br_bookList")) {
    		viewPage = "/WEB-INF/view/br_bookList.jsp";
    	}
    	
    	//��������
    	else if(com!=null && com.trim().equals("br_reviewList")) {
    		viewPage = "/WEB-INF/view/br_reviewList.jsp";
    	}
    	
    	//Q&A
    	else if(com!=null && com.trim().equals("br_questionList")) {
    		viewPage = "/WEB-INF/view/br_questionList.jsp";
    	}
    	
    	//�����߰���û
    	else if(com!=null && com.trim().equals("br_bookRequest")) {
    		viewPage = "/WEB-INF/view/br_bookRequest.jsp";
    	}
    	
    	//my����
    	else if(com!=null && com.trim().equals("br_myReview")) {
    		viewPage = "/WEB-INF/view/br_myReview.jsp";
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
    		viewPage = "/WEB-INF/view/br_noticeList.jsp";
    	}
    	
    	//�������� ��(�����)
    	else if(com!=null && com.trim().equals("br_noticeDetail")) {
    		viewPage = "/WEB-INF/view/br_noticeDetail.jsp";
    	}
    	
    	//���� �󼼺���
    	else if(com!=null && com.trim().equals("br_questionDetail")) {
    		viewPage = "/WEB-INF/view/br_questionDetail.jsp";
    	}
    	
    	//�����󼼺���
    	else if(com!=null && com.trim().equals("br_bookExplanation")) {
    		viewPage = "/WEB-INF/view/br_bookExplanation.jsp";
    	}
    	
    	//�α���
    	else if(com!=null && com.trim().equals("br_login")) {
    		viewPage = "/WEB-INF/view/br_login.jsp";
    	}
    	
    	//ȸ������
    	else if(com!=null && com.trim().equals("br_signUp")) {
    		viewPage = "/WEB-INF/view/br_signUp.jsp";
    	}
    	
    	//���̵� ��й�ȣ ã��
    	else if(com!=null && com.trim().equals("br_idpwFind")) {
    		viewPage = "/WEB-INF/view/br_idpwFind.jsp";
    	}
    	
    	
    	
    	
    	//������ �α���
    	else if(com!=null && com.trim().equals("br_managerLogin")) {
    		viewPage = "/WEB-INF/view/br_managerLogin.jsp";
    	}
    	
    	//�������(������)
    	else if(com!=null && com.trim().equals("br_managerBookList")) {
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
    	
    	//��������(������)
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
