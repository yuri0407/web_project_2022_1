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
 * ��Ű���� : br.dao
 * ���ϸ� : BookDao.java
 * �ۼ��� : ������
 * �����̷� : 
 *  2022.06.19 / �����ۼ� / ������
 * ���α׷� ���� :
 *  br_book ���̺�� �����ϴ� ���α׷�
 *  - insert(BookDto)
 *  - list()
 *  - checkUser() : �α����ϴ� ����ڰ� ��ȿ�� ��������� �Ǻ�
**=================================================*/

public class BookDao {
	
	//dbcp���� Ŀ�ؼ� ������
	private Connection getConnection() throws Exception{
		
		//DBCP�� Ŀ�ؼ� ������
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/yuri");
		Connection con = ds.getConnection();	
		return con;
		
	}
	
	//br_review ���̺� ����� ���� �Է�
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
		
	
	//�ش��ϴ� �������� ��������
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
