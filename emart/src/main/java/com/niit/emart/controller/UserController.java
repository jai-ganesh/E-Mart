package com.niit.emart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
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
public String gotoadmin()
{
return "Login";
}
@RequestMapping("/adminHome")
public String gotoadminhome()
{
return "adminHome";
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
			 mv = new ModelAndView("Login");
			 System.out.println(message);
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
	@RequestMapping("/Upload")
	public String gotoupload()
	{
	return "Upload";
	}
	@RequestMapping("/users")
	public String ad(@RequestParam(value="error",required=false)String error,Authentication auth)
	{
		System.out.println(auth);
		System.out.println(error);
		if(error!=null)
		{
			return "Home";
		}
		else
		{
			return "Login";
		}
		}
	@RequestMapping("/cart")
	public String checkout(){
		
		return "redirect:/cart?cart";
		
	}

		
}
