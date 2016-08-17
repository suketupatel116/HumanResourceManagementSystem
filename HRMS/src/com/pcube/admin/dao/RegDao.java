package com.pcube.admin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
//import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.pcube.admin.bean.RegBean;
import com.pcube.admin.util.DBConnection;

public class RegDao 
{

	public boolean insertData(RegBean bean) 
	{
		Connection conn = null;
		Statement stmt = null;
		boolean flag = false;
		
		String firstName = bean.getFirstName();
		String lastName = bean.getLastName();
		String username = bean.getUsername();
		String password = bean.getPassword();
		String contactNo = bean.getContactNo();
		String eMail = bean.geteMail();
		String dob = bean.getDob();
		String gender = bean.getGender();
		String marital = bean.getMarital();
		String address = bean.getAddress();
		String language = bean.getLanguage();
		String jobtitle = bean.getJobtitle();
		System.out.println("first name :"+firstName);
		System.out.println("last name :"+lastName);
		System.out.println("username :"+username);
		System.out.println("password :"+password);
		System.out.println("contactNo  :"+contactNo);
		System.out.println("eMail :"+eMail);
		System.out.println("dob :"+dob);
		System.out.println("gender :"+gender);
		System.out.println("marital status :"+marital);
		System.out.println("address :"+address);
		System.out.println("language :"+language);
		System.out.println("jobtitle :"+jobtitle);
		try
		{
			conn = DBConnection.getConn();
			stmt = conn.createStatement();
			String query = "insert into Employee_Master values(Empl.nextval,'"+firstName+"','"+lastName+"','"+username+"','"+password+"','"+contactNo+"','"+eMail+"','"+dob+"','"+gender+"','"+marital+"','"+address+"','"+language+"','"+jobtitle+"')";
			String lmquery = "insert into Login_Master values(2,'"+username+"','"+password+"',2)";
			int j = stmt.executeUpdate(lmquery);
			int i = stmt.executeUpdate(query);
			if(i>0 & j>0)
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
			String query = "select * from Employee_Master";
			rs = stmt.executeQuery(query);
			if(rs !=  null)
			{
				while(rs.next())
				{
					RegBean bean = new RegBean();
					bean.setId(rs.getInt(1)); //bean.setId(rs.getInt("ID"));
					bean.setFirstName(rs.getString(2));
					bean.setLastName(rs.getString(3));
					bean.setUsername(rs.getString(4));
					bean.setPassword(rs.getString(5));
					bean.setContactNo(rs.getString(6));
					bean.seteMail(rs.getString(7));
					bean.setDob(rs.getString(8));
					bean.setGender(rs.getString(9));
					bean.setMarital(rs.getString(10));
					bean.setAddress(rs.getString(11));
					bean.setLanguage(rs.getString(12));
					bean.setJobtitle(rs.getString(13));
										
					list.add(bean);
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
		return list;
		
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
		String query = "delete  from Employee_Master where id='"+id+"' ";
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

public RegBean viewData(String id) 
{
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	RegBean bean = new RegBean();
	
	try 
	{
		conn = DBConnection.getConn();
		stmt = conn.createStatement();
		String query = "select * from Employee_Master where id='"+id+"' ";
		rs = stmt.executeQuery(query);
		if(rs != null)
		{
			while(rs.next())
			{
				
			
				bean.setId(rs.getInt(1)); //bean.setId(rs.getInt("ID"));
				bean.setFirstName(rs.getString(2));
				bean.setLastName(rs.getString(3));
				bean.setUsername(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setContactNo(rs.getString(6));
				bean.seteMail(rs.getString(7));
				bean.setDob(rs.getString(8));
				bean.setGender(rs.getString(9));
				bean.setMarital(rs.getString(10));
				bean.setAddress(rs.getString(11));
				bean.setLanguage(rs.getString(12));
				bean.setJobtitle(rs.getString(13));
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
public boolean updateData(RegBean bean) 
{
	Connection conn = null;
	Statement stmt = null;
	boolean flag = false;
	
	 	String id = bean.getId()+"";
		String firstName = bean.getFirstName();
		String lastName = bean.getLastName();
		String username = bean.getUsername();
		String contactNo =bean.getContactNo(); 
		String eMail =bean.geteMail();
		String dob = bean.getDob();
		String gender = bean.getGender();
		String marital = bean.getMarital();
		String address = bean.getAddress();
		String language = bean.getLanguage();
		String jobtitle = bean.getJobtitle();

	
	try 
	{
		conn = DBConnection.getConn();
		stmt = conn.createStatement();
		String query = "update Employee_Master set firstname='"+firstName+"', lastname='"+lastName+"',  username='"+username+"',contactno='"+contactNo+"',email='"+eMail+"',dob='"+dob+"',gender='"+gender+"',marital='"+marital+"',address='"+address+"',language='"+language+"',jobtitle='"+jobtitle+"' where id='"+id+"' ";
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

public RegBean view(String username) 
{
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	RegBean bean = new RegBean();
	
	try 
	{
		conn = DBConnection.getConn();
		stmt = conn.createStatement();
		String query = "select * from Employee_Master where username='"+username+"' ";
		rs = stmt.executeQuery(query);
		if(rs != null)
		{
			while(rs.next())
			{
				
			
				bean.setId(rs.getInt(1)); //bean.setId(rs.getInt("ID"));
				bean.setFirstName(rs.getString(2));
				bean.setLastName(rs.getString(3));
				bean.setUsername(rs.getString(4));
				bean.setPassword(rs.getString(5));
				bean.setContactNo(rs.getString(6));
				bean.seteMail(rs.getString(7));
				bean.setDob(rs.getString(8));
				bean.setGender(rs.getString(9));
				bean.setMarital(rs.getString(10));
				bean.setAddress(rs.getString(11));
				bean.setLanguage(rs.getString(12));
				bean.setJobtitle(rs.getString(13));
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

public boolean update(RegBean bean) {
	Connection conn = null;
	Statement stmt = null;
	boolean flag = false;
	
	 	String id = bean.getId()+"";
		String firstName = bean.getFirstName();
		String lastName = bean.getLastName();
		String username = bean.getUsername();
		String contactNo =bean.getContactNo(); 
		String eMail =bean.geteMail();
		String dob = bean.getDob();
		String gender = bean.getGender();
		String marital = bean.getMarital();
		String address = bean.getAddress();
		String language = bean.getLanguage();
		String jobtitle = bean.getJobtitle();

	
	try 
	{
		conn = DBConnection.getConn();
		stmt = conn.createStatement();
		String query = "update Employee_Master set firstname='"+firstName+"', lastname='"+lastName+"',  username='"+username+"',contactno='"+contactNo+"',email='"+eMail+"',dob='"+dob+"',gender='"+gender+"',marital='"+marital+"',address='"+address+"',language='"+language+"',jobtitle='"+jobtitle+"' where username='"+username+"' ";
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