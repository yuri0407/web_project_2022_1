package br.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.BookDao;
import br.dto.BookDto;

public class BookSaveService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//폼 데이터를 가져온다.
		BookDto dto = new BookDto();
		
		dto.setBname(request.getParameter("bname"));
		dto.setWriter(request.getParameter("writer"));
		dto.setPublisher(request.getParameter("publisher"));
		dto.setPdate(request.getParameter("pdate"));
		dto.setCategory(request.getParameter("category"));
		dto.setbContent(request.getParameter("bContent"));
	
		//DAO 생성
		BookDao dao = new BookDao();
		
		//DAO insert() 실행
		dao.insert(dto);

	}

}
