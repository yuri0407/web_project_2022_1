package br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import br.dto.NoticeDto;
import br.dto.ReviewDto;

/**==================================================
 * ��Ű���� : br.dao
 * ���ϸ� : NoticeDao.java
 * �ۼ��� : ������
 * �����̷� : 
 *  2022.06.13 / �����ۼ� / ������
 * ���α׷� ���� :
 *  br_notice ���̺�� �����ϴ� ���α׷�
 *  - insert(ReviewDto)
 *  - list()
 *  - checkUser() : �α����ϴ� ����ڰ� ��ȿ�� ��������� �Ǻ�
**=================================================*/
public class NoticeDao {
	
	//dbcp���� Ŀ�ؼ� ������
	private Connection getConnection() throws Exception{
		
		//DBCP�� Ŀ�ؼ� ������
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/yuri");
		Connection con = ds.getConnection();	
		return con;
		
	}
	
	//br_notice ���̺� �������� ���� ���
	public void insert(ReviewDto dto){
		String sql = "insert into br_review(rNum, id, bname, content) values(?, ?, ?, ?)";
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{			
			pstmt.setString(1, null);
			pstmt.setString(2, dto.getNickName());
			pstmt.setString(3, dto.getBname());
			pstmt.setString(4, dto.getContent());
		
			/* int i = stmt.executeUpdate(sql); */
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	//list
	public ArrayList<NoticeDto> list(){
		ArrayList<NoticeDto> dtos = new ArrayList<NoticeDto>();
		String sql = "select noNum, nTitle, nContent, nDate from br_notice";
				
		try(
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			
			while(rs.next()) {
				int noNum = rs.getInt("noNum");
				String nTitle = rs.getString("nTitle");
				String nContent = rs.getString("nContent");
				String nDate = rs.getString("nDate");
				NoticeDto dto = new NoticeDto(noNum, nTitle, nContent, nDate);
				
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
	
	
	//�޼ҵ� : 1. public / private
	//2. ��ȯ ������ Ÿ��(output)
	//3. �Է� �Ű�����(input)
	
	
	//search
		public ArrayList<ReviewDto> search(String bname){
			ArrayList<ReviewDto> dtos = new ArrayList<ReviewDto>();
			String sql = "select rNum, id, bname, content from br_review where";
					
			try(
				
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);	
//				Statement stmt = con.createStatement();
				ResultSet rs = pstmt.executeQuery();
			){
				if(bname != null && !bname.equals(""))
				sql += " like '%"+bname.trim()+"%'";
//				pstmt.setString(1, dto.getBname());
				
				while(rs.next()) {
					int rNum = rs.getInt("rNum");
					String id = rs.getString("id");
					String bname2 = rs.getString("bname");
					String content = rs.getString("content");
					ReviewDto dto = new ReviewDto(rNum, id, bname2, content);
					
					dtos.add(dto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return dtos;
		}
		
		
	
	//update
	public void update(ReviewDto dto) {
		String sql = "update br_review set bname=?, content=? where rNum=?";
		
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{			
			pstmt.setString(1, dto.getBname());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getrNum());
			
			pstmt.executeUpdate();
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
		
	
	
	//delete
	public void delete(String id) {
		String sql = "delete from br_review where id=?";
		
		try (
			Connection con = getConnection();				
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}
