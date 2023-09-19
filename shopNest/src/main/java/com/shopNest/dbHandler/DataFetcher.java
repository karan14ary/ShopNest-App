package com.shopNest.dbHandler;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shopNest.product.Product;

public class DataFetcher {

	public static String fetchPassword(String uname) {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="0275";
		String sql="SELECT pass FROM customer WHERE uname=?";
		String dbPass="";
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,user,password);
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, uname);
			
			ResultSet rs=ps.executeQuery();
			rs.next();
			dbPass=rs.getString(1);
		}
		catch(Exception e) {
			System.out.println("Login issue");
			e.printStackTrace();
			
		}
		
			return dbPass;
		
		
	}
	public static List fetchUsersInfo() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="0275";
		String sql="SELECT uname,email,gender,address FROM customer";
		List ulist=new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection(url,user,password);
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				ulist.add(temp);
			}
			
		}
		catch(Exception e) {
			System.out.println("Problem in Fetching customer");
			e.printStackTrace();
			
		}
		
			return ulist;
		
	}
	public static List fetchProductInfo() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="0275";
		String sql="SELECT pid,pname,pdesc,pprice,pimg FROM product";
		List plist=new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection(url,user,password);
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4)+":"+rs.getString(5);
				plist.add(temp);
			}
			
		}
		catch(Exception e) {
			System.out.println("Problem in FetchingProduct");
			e.printStackTrace();
			
		}
		
			return plist;
		
	}
	public static List fetchProductDetail() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="0275";
		String sql="SELECT pid,pname,pdesc,pprice,pimg FROM product";
		List ilist=new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection(url,user,password);
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4)+":"+rs.getString(5);
				ilist.add(temp);
			}
		}
		catch(Exception e) {
			System.out.println("Problem in Fetching Product");
			e.printStackTrace();
			
		}
			return ilist;
	}
	public static Product getProductById(int pid) {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="0275";
		String sql="SELECT pname,pprice FROM product WHERE pid=?";
		Product p=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection(url,user,password);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,pid);
			ResultSet rs=ps.executeQuery();
			rs.next();
			String pname=rs.getString(1);
			int pprice=rs.getInt(2);
			p=new Product(pid,pname,pprice);
					
			
		}
		catch(Exception e) {
			System.out.println("Problem in Fetching Product by id");
			e.printStackTrace();
			
		}
		finally {
			return p;
		}
		
	}
}
