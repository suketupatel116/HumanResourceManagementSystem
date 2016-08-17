package com.pcube.admin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.pcube.admin.bean.ReportBean;
import com.pcube.admin.util.DBConnection;

public class ReportDao {

public boolean insertReport(ReportBean bean){
		
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		String username = bean.getUsername();
		String day = bean.getDay();
		String task = bean.getTask();
		String timeOn = bean.getTimeOn();
		String timeOff = bean.getTimeOff();
		
		System.out.println("User Name is :"+ username);
		System.out.println("Day is :"+day);
		System.out.println("task :"+task);
		System.out.println("Time On :"+timeOn);
		System.out.println("Time OFf :"+timeOff);
		
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "insert into Report_Master values(Empl.nextval,'"+username+"','"+day+"', '"+task+"', '"+timeOn+"','"+timeOff+"')";
			int i = stmt.executeUpdate(query);
			if(i>0)
			{	System.out.println("data inserted successfully....");
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
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList selectData() 
	{
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList();
		
		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Report_Master";
			rs = stmt.executeQuery(query);
			if(rs !=  null)
			{
				while(rs.next())
				{
					ReportBean bean = new ReportBean();
					bean.setId(rs.getInt(1)); //bean.setId(rs.getInt("ID"));
					bean.setUsername(rs.getString(2));
					bean.setDay(rs.getString(3));
					bean.setTask(rs.getString(4));
					bean.setTimeOn(rs.getString(5));
					bean.setTimeOff(rs.getString(6));
				
					list.add(bean);
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
		return list;
		
	}
	public ReportBean viewData(String id) 
	{
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ReportBean bean = new ReportBean();
		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Report_Master where id='"+id+"' ";
			rs = stmt.executeQuery(query);
			if(rs != null)
			{
				while(rs.next())
				{

					bean.setId(rs.getInt(1)); 
					bean.setUsername(rs.getString(2));
					bean.setDay(rs.getString(3));
					bean.setTask(rs.getString(4));
					bean.setTimeOn(rs.getString(5));
					bean.setTimeOff(rs.getString(6));
					}
			}
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			if(stmt != null)
			{
				try 
				{
					stmt.close();
				} 
				catch (SQLException e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(conn != null)
			{
				try 
				{
					conn.close();
				}
				catch (SQLException e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return bean;
	}
	public boolean updateData(ReportBean bean) 
	{
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		 	String id = bean.getId()+"";
			String username = bean.getUsername();
			String day = bean.getDay();
			String task = bean.getTask();
			String timeOn = bean.getTimeOn();
			String timeOff = bean.getTimeOff();

		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "update Report_Master set username='"+username+"', day='"+day+"',  task='"+task+"',timeOn='"+timeOn+"',timeOff='"+timeOff+"' where id='"+id+"' ";
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
				try 
				{
					stmt.close();
				} 
				catch (SQLException e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(conn != null)
			{
				try 
				{
					conn.close();
				}
				catch (SQLException e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return flag;
	}

		public boolean deleteData(String id) 
	{
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		
		try 
		{
		    conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "delete  from Report_Master where id='"+id+"' ";
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
				try 
				{
					stmt.close();
				} 
				catch (SQLException e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(conn != null)
			{
				try 
				{
					conn.close();
				}
				catch (SQLException e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return flag;
	}

}
