package com.pcube.admin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.pcube.admin.bean.PayrollBean;
import com.pcube.admin.util.DBConnection;

public class PayrollDao {

	public boolean insertsalary(PayrollBean bean){
		
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		String username = bean.getUsername();
		String basic = bean.getBasic();
		String HRA = bean.getHRA();
		String TA = bean.getTA();
		String PF = bean.getPF();
		
		System.out.println("User Name is :"+ username);
		System.out.println("Basic salary is :"+basic);
		System.out.println("HRA :"+HRA);
		System.out.println("TA :"+TA);
		System.out.println("PF :"+PF);
		
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "insert into Payroll_Master values(Empl.nextval,'"+username+"','"+basic+"', '"+HRA+"', '"+TA+"','"+PF+"')";
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
			String query = "select * from Payroll_Master";
			rs = stmt.executeQuery(query);
			if(rs !=  null)
			{
				while(rs.next())
				{
					PayrollBean bean = new PayrollBean();
					bean.setId(rs.getInt(1)); //bean.setId(rs.getInt("ID"));
					bean.setUsername(rs.getString(2));
					bean.setBasic(rs.getString(3));
					bean.setHRA(rs.getString(4));
					bean.setTA(rs.getString(5));
					bean.setPF(rs.getString(6));
				
					list.add(bean);
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
		return list;
		
	}
	public PayrollBean viewData(String id) 
	{
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		PayrollBean bean = new PayrollBean();
		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Payroll_Master where id='"+id+"' ";
			rs = stmt.executeQuery(query);
			if(rs != null)
			{
				while(rs.next())
				{

					bean.setId(rs.getInt(1)); 
					bean.setUsername(rs.getString(2));
					bean.setBasic(rs.getString(3));
					bean.setHRA(rs.getString(4));
					bean.setTA(rs.getString(5));
					bean.setPF(rs.getString(6));;
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
	public boolean updateData(PayrollBean bean) 
	{
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		 	String id = bean.getId()+"";
			String username = bean.getUsername();
			String basic =bean.getBasic(); 
			String HRA =bean.getHRA();
			String TA = bean.getTA();
			String PF = bean.getPF();
		

		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "update Payroll_Master set username='"+username+"', basic='"+basic+"',  HRA='"+HRA+"',TA='"+TA+"',PF='"+PF+"' where id='"+id+"' ";
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
			String query = "delete  from Payroll_Master where id='"+id+"' ";
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

	public PayrollBean view(String userName) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		PayrollBean bean = new PayrollBean();
		
		try 
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "select * from Payroll_Master where username='"+userName+"' ";
			rs = stmt.executeQuery(query);
			if(rs != null)
			{
				while(rs.next())
				{

					bean.setId(rs.getInt(1)); 
					bean.setUsername(rs.getString(2));
					bean.setBasic(rs.getString(3));
					bean.setHRA(rs.getString(4));
					bean.setTA(rs.getString(5));
					bean.setPF(rs.getString(6));;
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


	

	

}
