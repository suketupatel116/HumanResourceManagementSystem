package com.pcube.admin.util;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class CheckConnection {
	

	public static void main(String args[]) 
	{
		
		Connection conn = null;
		Statement stmt = null;
		
		conn = DBConnection.getConn();
		try 
		{
			stmt = conn.createStatement();
			String query = "create table FormDemo(id number(5), firstName varchar2(20), lastName varchar2(20),userName varchar2(10), password varchar2(25))";
			int i = stmt.executeUpdate(query);
			
			if(i>0)
			{
				System.out.println("data inserted successfully....");
			}
		} 
		catch (SQLException e) {
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
			if(conn != null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	
			
			
		} 


}
