package com.pcube.admin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.pcube.admin.bean.FormBean;
import com.pcube.admin.util.DBConnection;

public class FormDao {
	
	public boolean insertData(FormBean bean) 
	{
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		String firstName = bean.getFirstName();
		String lastName = bean.getLastName();
		String userName = bean.getUserName();
		String password = bean.getPassword();
		
		
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "insert into FormDemo values(empl.nextval,'"+firstName+"','"+lastName+"','"+userName+"','"+password+"')";      
			int i = stmt.executeUpdate(query);
			
			if(i>0)
			{	
				flag = true;
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
		return flag;
	}
	public boolean checkUser(String userName)
	{
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from FormDemo where username = '"+userName+"' ";      
			rs = stmt.executeQuery(query);
			
			if(rs != null)
			{	
				while(rs.next())
				{
					flag = true;
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
		return flag;
	}

}
