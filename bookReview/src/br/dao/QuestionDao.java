package br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import br.dto.BookDto;
import br.dto.NoticeDto;
import br.dto.QuestionDto;

public class QuestionDao {
	
	//dbcp에서 커넥션 얻어오기
		private Connection getConnection() throws Exception{
			
			//DBCP로 커넥션 얻어오기
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/yuri");
			Connection con = ds.getConnection();	
			return con;
			
		}
	
	//list
		public ArrayList<QuestionDto> list(){
			ArrayList<QuestionDto> dtos = new ArrayList<QuestionDto>();
			String sql = "select qNo, qTitle, qContent, qDate, mAnswer from br_question";
					
			try(
				Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
			){
				
				while(rs.next()) {
					int qNo = rs.getInt("qNo");
					String qTitle = rs.getString("qTitle");
					String qContent = rs.getString("qContent");
					String qDate = rs.getString("qDate");
					String mAnswer = rs.getString("mAnswer");
					QuestionDto dto = new QuestionDto(qNo, qTitle, qContent, qDate, mAnswer);
					
					dtos.add(dto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return dtos;
		}
		
		
		//해당하는 질문정보 가져오기
		public ArrayList<QuestionDto> search(int qNo){
			ArrayList<QuestionDto> dtos = new ArrayList<QuestionDto>();
			String sql = "select * from br_question where qNo=?";
					
			try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				
			){
				pstmt.setInt(1, qNo);
				
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String qTitle = rs.getString("qTitle");
					String qContent = rs.getString("qContent");
					String qDate = rs.getString("qDate");
					String mAnswer = rs.getString("mAnswer");
					QuestionDto dto = new QuestionDto(qNo, qTitle, qContent, qDate, mAnswer);
					
					dtos.add(dto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return dtos;
		}

}
