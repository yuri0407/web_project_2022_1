package br.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.BookDao;
import br.dto.BookDto;

public class ExplanationService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//�� ������ ��������
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		//1. DAO�� �����Ѵ�.
		BookDao dao = new BookDao();
		
		//2. DAO���� �ʿ��� �޼ҵ� ����
		ArrayList<BookDto> dtos = dao.explanation(bno);
		
		//3. ��ȯ�� �����ʹ� requestScope�� �����Ѵ�.
		request.setAttribute("dtos", dtos);

	}

}
