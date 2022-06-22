package br.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.NoticeDao;
import br.dao.QuestionDao;
import br.dto.NoticeDto;
import br.dto.QuestionDto;

public class NoticeSearchService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�� ������ ��������
		int noNum = Integer.parseInt(request.getParameter("noNum"));
		
		//1. DAO�� �����Ѵ�.
		NoticeDao dao = new NoticeDao();
		
		//2. DAO���� �ʿ��� �޼ҵ� ����
		ArrayList<NoticeDto> dtos = dao.search(noNum);
		
		//3. ��ȯ�� �����ʹ� requestScope�� �����Ѵ�.
		request.setAttribute("notice", dtos);


	}

}
