package com.heaven.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class BaseDao {
	private static final String DRIVER="com.mysql.jdbc.Driver";
	private static final String URL="jdbc:mysql://127.0.0.1/dangyuan";
	private static final String UNAME="root";
	private static final String UPWD="abc86982392";
	
	static{
		try {
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	protected ResultSet rs = null;
	protected Connection conn = null;
	protected PreparedStatement pstmt = null;
	
	public void getConn(){
		try {
			conn = DriverManager.getConnection(URL,UNAME,UPWD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 
	 * @param sql
	 * @param params
	 * @return
	 */
	public ResultSet excuteQuery(String sql,Object[] params){
		this.getConn();
		try {
			pstmt = conn.prepareStatement(sql);
			if(params.length!=0){
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i+1, params[i]);
				}
			}
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	
	public int excuteUpdate(String sql,Object[] params){
		int count = 0;
		this.getConn();
		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				pstmt.setObject(i+1, params[i]);
			}
			count = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return -100;
		}finally{
			this.closeAll();
		}
		
		return count;
	}
	
	public void closeAll(){
		if(null!=rs){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(null!=pstmt){
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(null!=conn){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
