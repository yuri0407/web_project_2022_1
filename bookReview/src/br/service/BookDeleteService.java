package br.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.BookDao;

public class BookDeleteService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//�� ������ �������� 
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		//1. DAO�� �����Ѵ�.
		BookDao dao = new BookDao();
		
		//2. DAO���� �ʿ��� �޼ҵ� ����
		dao.delete(bno);
		

	}

}
