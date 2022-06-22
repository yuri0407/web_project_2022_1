package br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;
import javax.websocket.Session;

import br.dto.MemberDto;
import br.dto.ReviewDto;

/**==================================================
 * 패키지명 : br.dao
 * 파일명 : MemberDao.java
 * 작성자 : 정유리
 * 변경이력 : 
 *  2022.06.18 / 최초작성 / 정유리
 * 프로그램 설명 :
 *  br_member 테이블과 연동하는 프로그램
 *  - insert(ReviewDto)
 *  - list()
 *  - checkUser() : 로그인하는 사용자가 유효한 사용자인지 판별
**=================================================*/
public class MemberDao {
	
	//dbcp에서 커넥션 얻어오기
	private Connection getConnection() throws Exception{
		
		//DBCP로 커넥션 얻어오기
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/yuri");
		Connection con = ds.getConnection();	
		return con;
		
	}
	
	//br_member 테이블에 사용자 정보 등록
	public void insert(MemberDto dto){
		String sql = "insert into br_member(id, pwd, email) values(?, ?, ?)";
		
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		)
		{			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getEmail());
		
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
	
	
	//메소드 : 1. public / private
	//2. 반환 데이터 타입(output)
	//3. 입력 매개변수(input)
	
	
	
		
		
	
	//중복되는 아이디인지 검사
	public int checkId(String id) {
		String sql = "select id from br_member where id=?";
		int check = 0;
		
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setString(1, id);
		
			try(ResultSet rs = pstmt.executeQuery();)
			{	
				if(rs.next()) {
					check = 1;
				}else {
					check = 0;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	
	
	
	//데이터베이스에 저장되어있는 회원인지 검사
	public int checkUser(String id, String pwd) {
		String sql = "select pwd from br_member where id=? and pwd=?";
		int flag = 0;
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
		
			try(ResultSet rs = pstmt.executeQuery();)
			{	
				if(rs.next()) {
					flag = 1;
				}else {
					flag = 0;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}
