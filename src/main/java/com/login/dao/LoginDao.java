package com.login.dao;

import java.sql.*;

public class LoginDao {

	String url = "jdbc:mysql://localhost:3306/loginmodule";
	String username = "root";
	String password = "rootAbhi";
	String query = "select * from users where username=? and password=?;";

	public boolean checkUser(String uname, String pwd) {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);

			PreparedStatement pS = con.prepareStatement(query);
			pS.setString(1, uname);
			pS.setString(2, pwd);

			ResultSet rS = pS.executeQuery();
			while (rS.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
}
