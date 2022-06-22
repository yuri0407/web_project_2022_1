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
import br.dto.ReviewDto;

/**==================================================
 * 패키지명 : br.dao
 * 파일명 : BookDao.java
 * 작성자 : 정유리
 * 변경이력 : 
 *  2022.06.19 / 최초작성 / 정유리
 * 프로그램 설명 :
 *  br_book 테이블과 연동하는 프로그램
 *  - insert(BookDto)
 *  - list()
 *  - checkUser() : 로그인하는 사용자가 유효한 사용자인지 판별
**=================================================*/

public class BookDao {
	
	//dbcp에서 커넥션 얻어오기
	private Connection getConnection() throws Exception{
		
		//DBCP로 커넥션 얻어오기
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/yuri");
		Connection con = ds.getConnection();	
		return con;
		
	}
	
	//br_review 테이블에 사용자 정보 입력
	public void insert(BookDto dto){
		String sql = "insert into br_book(bno, bname, writer, publisher, pdate, category, bContent) values(?, ?, ?, ?, ?, ?, ?)";
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{			
			pstmt.setString(1, null);
			pstmt.setString(2, dto.getBname());
			pstmt.setString(3, dto.getWriter());
			pstmt.setString(4, dto.getPublisher());
			pstmt.setString(5, dto.getPdate());
			pstmt.setString(6, dto.getCategory());
			pstmt.setString(7, dto.getbContent());
		
			/* int i = stmt.executeUpdate(sql); */
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//delete
		public void delete(int bno) {
			String sql = "delete from br_book where bno=?";
			
			try (
				Connection con = getConnection();				
				PreparedStatement pstmt = con.prepareStatement(sql);
			)
			{
				pstmt.setInt(1, bno);
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
		public ArrayList<BookDto> list(){
			ArrayList<BookDto> dtos = new ArrayList<BookDto>();
			String sql = "select * from br_book";
					
			try(
				Connection con = getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				
			){
				
				
				
				while(rs.next()) {
					int bno = rs.getInt("bno");
					String bname = rs.getString("bname");
					String writer = rs.getString("writer");
					String publisher = rs.getString("publisher");
					String pdate = rs.getString("pdate");
					String category = rs.getString("category");
					String bContent = rs.getString("bContent");
					BookDto dto = new BookDto(bno, bname, writer, publisher, pdate, category, bContent);
					
					dtos.add(dto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return dtos;
		}
		
	
	//해당하는 도서정보 가져오기
		public ArrayList<BookDto> explanation(int bno){
			ArrayList<BookDto> dtos = new ArrayList<BookDto>();
			String sql = "select * from br_book where bno=?";
					
			try(
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				
			){
				pstmt.setInt(1, bno);
				
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String bname = rs.getString("bname");
					String writer = rs.getString("writer");
					String publisher = rs.getString("publisher");
					String pdate = rs.getString("pdate");
					String category = rs.getString("category");
					String bContent = rs.getString("bContent");
					BookDto dto = new BookDto(bno, bname, writer, publisher, pdate, category, bContent);
					
					dtos.add(dto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return dtos;
		}

}
