package com.pcube.admin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.pcube.admin.bean.LeaveBean;
import com.pcube.admin.util.DBConnection;

public class LeaveDao {

	public boolean insert(LeaveBean bean){
		
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		String username = bean.getUsername();
		String leavetype = bean.getLeavetype();
		String from = bean.getFrom();
		String to = bean.getTo();
		String remarks = bean.getRemarks();
		
		System.out.println("User Name is :"+ username);
		System.out.println(" leavetype is :"+leavetype);
		System.out.println("from :"+from);
		System.out.println("To :"+to);
		System.out.println("remarks :"+remarks);
		
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "insert into Leave_Master values(Empl.nextval,'"+username+"','"+leavetype+"', '"+from+"', '"+to+"','"+remarks+"')";
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
			String query = "select * from Leave_Master";
			rs = stmt.executeQuery(query);
			if(rs !=  null)
			{
				while(rs.next())
				{
					LeaveBean bean = new LeaveBean();
					bean.setId(rs.getInt(1)); //bean.setId(rs.getInt("ID"));
					bean.setUsername(rs.getString(2));
					bean.setLeavetype(rs.getString(3));
					bean.setFrom(rs.getString(4));
					bean.setTo(rs.getString(5));
					bean.setRemarks(rs.getString(6));
				
					list.add(bean);
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
		return list;
		
	}
	public LeaveBean viewData(String id) 
	{
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		LeaveBean bean = new LeaveBean();
		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Leave_Master where id='"+id+"' ";
			rs = stmt.executeQuery(query);
			if(rs != null)
			{
				while(rs.next())
				{

					bean.setId(rs.getInt(1)); 
					bean.setUsername(rs.getString(2));
					bean.setLeavetype(rs.getString(3));
					bean.setFrom(rs.getString(4));
					bean.setTo(rs.getString(5));
					bean.setRemarks(rs.getString(6));
				
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
	public boolean updateData(LeaveBean bean) 
	{
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		 	String id = bean.getId()+"";
			String username = bean.getUsername();
			String leavetype = bean.getLeavetype();
			String from = bean.getFrom();
			String to = bean.getTo();
			String remarks = bean.getRemarks();

		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "update Leave_Master set username='"+username+"', leavetype='"+leavetype+"',  fromdate='"+from+"',todate='"+to+"',remarks='"+remarks+"' where id='"+id+"' ";
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
			String query = "delete  from Leave_Master where id='"+id+"' ";
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
