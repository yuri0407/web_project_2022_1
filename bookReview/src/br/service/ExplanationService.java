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
		
		//폼 데이터 가져오기
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		//1. DAO를 생성한다.
		BookDao dao = new BookDao();
		
		//2. DAO에서 필요한 메소드 실행
		ArrayList<BookDto> dtos = dao.explanation(bno);
		
		//3. 반환된 데이터는 requestScope에 저장한다.
		request.setAttribute("dtos", dtos);

	}

}
