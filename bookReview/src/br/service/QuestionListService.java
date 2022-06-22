package br.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.QuestionDao;
import br.dto.QuestionDto;

public class QuestionListService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. DAO�� �����Ѵ�.
		QuestionDao dao = new QuestionDao();
		
		//2. DAO���� �ʿ��� �޼ҵ� ����
		ArrayList<QuestionDto> dtos = dao.list();
		
		//3. ��ȯ�� �����ʹ� requestScope�� �����Ѵ�.
		request.setAttribute("dtos", dtos);

	}

}
