package com.niit.emart.userdao;


public class UserDAO {
	public boolean isValidCredentials(String username,String password)	{
		if(username.equals("jai")&& password.equals("password"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

}
