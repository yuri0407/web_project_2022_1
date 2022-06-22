package br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ManagerDao {
	//dbcp에서 커넥션 얻어오기
	private Connection getConnection() throws Exception{
		
		//DBCP로 커넥션 얻어오기
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/yuri");
		Connection con = ds.getConnection();	
		return con;
		
	}
	
	// 관리자 로그인
	public int mangerLoginCheck(String mNum, String id, String pwd) {
		String sql = "SELECT * FROM br_manager WHERE mNum =? and id = ? and pwd = ?";
		
		int flag = 0;		 
		try (	Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				)
		{	pstmt.setString(1, mNum);
			pstmt.setString(2, id);
			pstmt.setString(3, pwd);
		
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
