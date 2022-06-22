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
		//폼 데이터 가져오기
		int noNum = Integer.parseInt(request.getParameter("noNum"));
		
		//1. DAO를 생성한다.
		NoticeDao dao = new NoticeDao();
		
		//2. DAO에서 필요한 메소드 실행
		ArrayList<NoticeDto> dtos = dao.search(noNum);
		
		//3. 반환된 데이터는 requestScope에 저장한다.
		request.setAttribute("notice", dtos);


	}

}
