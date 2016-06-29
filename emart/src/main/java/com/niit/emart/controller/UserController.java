package com.niit.emart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.emart.dao.UserDAO;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;
@RequestMapping("/")
public String gotoadminhome()
{
	return "Login";
}
	
    
    @RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");
		
		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(name,password,true)) 
		{
			message = "Valid credentials";
			 mv = new ModelAndView("adminHome");
		} else {
			message = "Invalid credentials";
			 mv = new ModelAndView("Home");
		}

		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping("/Home")
	public String gotohome()
	{
		return "Home";
	}
	@RequestMapping ("/Fruits")
	public String Fruits()
	{
		return "Fruits";
	}
	@RequestMapping ("/Vegetables")
	public String Vegetables()
	{
		return "Vegetables";
	}
	@RequestMapping ("/Contact")
	public String contactus()
	{
		return "Contact";
	}
	@RequestMapping ("/Login")
	public String login()
	{
		return "Login";
	}
	@RequestMapping ("/register")
	public String register()
	{
		return "register";
	}
	@RequestMapping ("/Cart")
	public String cart()
	{
		return "Cart";
	}
	@RequestMapping ("/addCategory")
	public String add()
	{
		return "addCategory";
	}

}
