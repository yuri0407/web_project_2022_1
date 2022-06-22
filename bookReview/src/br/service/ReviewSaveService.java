package br.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.ReviewDao;
import br.dto.ReviewDto;

public class ReviewSaveService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//폼 데이터를 가져온다.
		ReviewDto dto = new ReviewDto();
		
		dto.setNickName(request.getParameter("nickName"));
		dto.setBname(request.getParameter("bname"));
		dto.setContent(request.getParameter("content"));
	
		//DAO 생성
		ReviewDao dao = new ReviewDao();
		
		//DAO insert() 실행
		dao.insert(dto);
	}

}
