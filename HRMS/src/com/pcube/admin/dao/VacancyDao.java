package com.pcube.admin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.pcube.admin.bean.RegBean;
import com.pcube.admin.util.DBConnection;

public class VacancyDao {


	public boolean insertRecruit(RegBean bean) {

		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		String jobtitle = bean.getJobtitle();
		String experience = bean.getExperience();
		String remarks = bean.getRemarks();
		System.out.println("jobtitle :"+jobtitle);
		System.out.println("experience :"+experience);
		
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "insert into Recruitment_Master values(Empl.nextval,'"+jobtitle+"', '"+experience+"', '"+remarks+"')";
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
	public ArrayList vacancylist() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList();
		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Recruitment_Master";
			rs = stmt.executeQuery(query);
			if(rs !=  null)
			{
				while(rs.next())
				{
					RegBean bean = new RegBean();
					bean.setId(rs.getInt(1));
					bean.setJobtitle(rs.getString(2));
					bean.setExperience(rs.getString(3));
					bean.setRemarks(rs.getString(4));
					
					list.add(bean);
	}

	}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return list;
	}
	public RegBean VacView(String id) 
	{
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		RegBean bean = new RegBean();
		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Recruitment_Master where id='"+id+"' ";
			rs = stmt.executeQuery(query);
			if(rs != null)
			{
				while(rs.next())
				{
					
				
					bean.setId(rs.getInt(1)); //bean.setId(rs.getInt("ID"));
					bean.setJobtitle(rs.getString(2));
					bean.setExperience(rs.getString(3));
					bean.setRemarks(rs.getString(4));
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

	public boolean VacDelete(String id) {
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		
		try 
		{
		    conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "delete  from Recruitment_Master where id='"+id+"' ";
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
