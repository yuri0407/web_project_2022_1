package br.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.NoticeDao;
import br.dto.NoticeDto;

public class NoticeListService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. DAO�� �����Ѵ�.
		NoticeDao dao = new NoticeDao();
		
		//2. DAO���� �ʿ��� �޼ҵ� ����
		ArrayList<NoticeDto> dtos = dao.list();
		
		//3. ��ȯ�� �����ʹ� requestScope�� �����Ѵ�.
		request.setAttribute("dtos", dtos);

	}

}
