package br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import br.dto.ReviewDto;

/**==================================================
 * 패키지명 : br.dao
 * 파일명 : ReviewDao.java
 * 작성자 : 정유리
 * 변경이력 : 
 *  2022.06.13 / 최초작성 / 정유리
 * 프로그램 설명 :
 *  br_review 테이블과 연동하는 프로그램
 *  - insert(ReviewDto)
 *  - list()
 *  - checkUser() : 로그인하는 사용자가 유효한 사용자인지 판별
**=================================================*/
public class ReviewDao {
	
	//dbcp에서 커넥션 얻어오기
	private Connection getConnection() throws Exception{
		
		//DBCP로 커넥션 얻어오기
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/yuri");
		Connection con = ds.getConnection();	
		return con;
		
	}
	
	//br_review 테이블에 리뷰정보 등록
	public void insert(ReviewDto dto){
		String sql = "insert into br_review(rNum, nickName, bname, content) values(?, ?, ?, ?)";
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{			
			pstmt.setString(1, null);
			pstmt.setString(2, dto.getNickName());
			pstmt.setString(3, dto.getBname());
			pstmt.setString(4, dto.getContent());
		
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	//list
	public ArrayList<ReviewDto> list(){
		ArrayList<ReviewDto> dtos = new ArrayList<ReviewDto>();
		String sql = "select rNum, nickName, bname, content from br_review";
				
		try(
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
		){
			
			while(rs.next()) {
				int rNum = rs.getInt("rNum");
				String nickName = rs.getString("nickName");
				String bname = rs.getString("bname");
				String content = rs.getString("content");
				ReviewDto dto = new ReviewDto(rNum, nickName, bname, content);
				
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
	
	
	//메소드 : 1. public / private
	//2. 반환 데이터 타입(output)
	//3. 입력 매개변수(input)
	
	
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
