package br.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.ReviewDao;
import br.dto.ReviewDto;

public class ReviewListService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. DAO를 생성한다.
		ReviewDao dao = new ReviewDao();
		
		//2. DAO에서 필요한 메소드 실행
		ArrayList<ReviewDto> dtos = dao.list();
		
		//3. 반환된 데이터는 requestScope에 저장한다.
		request.setAttribute("dtos", dtos);

	}

}
