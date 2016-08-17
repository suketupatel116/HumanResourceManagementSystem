package com.pcube.admin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.pcube.admin.bean.loginBean;
import com.pcube.admin.util.DBConnection;

public class loginDao {

	public loginBean loginData(loginBean lbean) 
	{

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		loginBean bean = new loginBean();
		
		String userName = lbean.getUserName();
		String password = lbean.getPassword();
		
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Login_Master where userName='"+userName+"' AND password = '"+password+"' ";         
			rs = stmt.executeQuery(query);
			if(rs != null)
			{	
				while(rs.next())
				{
					bean.setId(rs.getString(1));
					bean.setUserName(rs.getString(2));
					bean.setPassword(rs.getString(3));
					bean.setRollId(rs.getInt(4));
				}
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			if(stmt != null)
			{
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(conn != null)
			{
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return bean;
	}

}
