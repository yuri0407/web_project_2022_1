package br.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.ReviewDao;
import br.dto.ReviewDto;

public class ReviewSearchService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//�� ������ �������� 
		String bname = request.getParameter("bname");
		
		//1. DAO�� �����Ѵ�.
		ReviewDao dao = new ReviewDao();
		
		//2. DAO���� �ʿ��� �޼ҵ� ����
		ArrayList<ReviewDto> dtos = dao.search(bname);
		
		//3. ��ȯ�� �����ʹ� requestScope�� �����Ѵ�.
		request.setAttribute("dtos", dtos);
	}

}
