package com.pcube.admin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.pcube.admin.bean.ProjectBean;
import com.pcube.admin.util.DBConnection;

public class ProjectDao {

	public boolean insert(ProjectBean bean){
		
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		String title = bean.getTitle();
		String cname = bean.getCname();
		String duration = bean.getDuration();
		String teamlead = bean.getTeamlead();
		String remarks = bean.getRemarks();
		
		System.out.println("Title is :"+ title);
		System.out.println("cname is :"+cname);
		System.out.println("duration :"+duration);
		System.out.println("teamlead :"+teamlead);
		System.out.println("remarks :"+remarks);
		
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "insert into Project_Master values(Empl.nextval,'"+title+"','"+cname+"', '"+duration+"', '"+teamlead+"','"+remarks+"')";
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
			String query = "select * from Project_Master";
			rs = stmt.executeQuery(query);
			if(rs !=  null)
			{
				while(rs.next())
				{
					ProjectBean bean = new ProjectBean();
					bean.setId(rs.getInt(1)); 
					bean.setTitle(rs.getString(2));
					bean.setCname(rs.getString(3));
					bean.setDuration(rs.getString(4));
					bean.setTeamlead(rs.getString(5));
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
	public ProjectBean viewData(String id) 
	{
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ProjectBean bean = new ProjectBean();
		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Project_Master where id='"+id+"' ";
			rs = stmt.executeQuery(query);
			if(rs != null)
			{
				while(rs.next())
				{

					bean.setId(rs.getInt(1)); 
					bean.setTitle(rs.getString(2));
					bean.setCname(rs.getString(3));
					bean.setDuration(rs.getString(4));
					bean.setTeamlead(rs.getString(5));
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
	public boolean updateData(ProjectBean bean) 
	{
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		 	String id = bean.getId()+"";
		 	String title = bean.getTitle();
			String cname = bean.getCname();
			String duration = bean.getDuration();
			String teamlead = bean.getTeamlead();
			String remarks = bean.getRemarks();

		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "update Project_Master set title='"+title+"', cname='"+cname+"',  duration='"+duration+"',teamlead='"+teamlead+"',remarks='"+remarks+"' where id='"+id+"' ";
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
			String query = "delete  from Project_Master where id='"+id+"' ";
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

