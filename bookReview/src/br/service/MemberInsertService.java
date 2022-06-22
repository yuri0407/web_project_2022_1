package br.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.dao.MemberDao;
import br.dto.MemberDto;

public class MemberInsertService implements BrService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//�� �����͸� �����´�.
		MemberDto dto = new MemberDto();
		
		dto.setId(request.getParameter("id"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setEmail(request.getParameter("email"));
	
		//DAO ����
		MemberDao dao = new MemberDao(); 
		
		//DAO insert() ����
		dao.insert(dto);

	}

}
