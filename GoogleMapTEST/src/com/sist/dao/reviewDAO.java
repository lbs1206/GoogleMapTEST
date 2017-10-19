package com.sist.dao;

import java.util.*;
import java.sql.*;


public class reviewDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL = "jdbc:oracle:thin:@localhost:1521:ORCL";
	private final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static reviewDAO dao;
	
	public reviewDAO() {
		try {
			Class.forName(DRIVER);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	//�̱��� ���� => �޸�����
	public static reviewDAO newInstance() {
		if(dao == null)
			dao = new reviewDAO();
		return dao;
	}
	
	//����
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(URL,"scott","tiger");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	//����
	public void disConnection() {
		try {
			if(ps!=null)ps.close();
			if(conn!=null)conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	//���
	
	public void reviewUpdate(reviewVO vo) {
		try {
			getConnection();
		
			String sql="INSERT INTO review(latlng,title,content) "
					+ "VALUES(?,?,?)";
				ps=conn.prepareStatement(sql);
				ps.setString(1, vo.getLatlng());
				ps.setString(2, vo.getTitle());
				ps.setString(3, vo.getContent());
				ps.executeUpdate();
			
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}finally {
			disConnection();
		}

	}
	
	public String keyword(String keyword) {
		return keyword;
	}
}
