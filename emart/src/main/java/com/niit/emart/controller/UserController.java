package com.niit.emart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.emart.userdao.UserDAO;

@Controller
public class UserController {

	@Autowired
	UserDAO userDAO;
	@RequestMapping("/")
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
	@RequestMapping("/isValidUser")
	public ModelAndView showMessage(@RequestParam(value="username") String username,
	@RequestParam(value="password") String password){
		System.out.println("in controller");
		String message;
		if (userDAO.isValidUser(username,password)){
			message="Valid credentials";
		}
		else {
			message="invalid credentials";
		}
		ModelAndView mv=new ModelAndView("Home");
		mv.addObject("message",message);
		mv.addObject("username", username);
		return mv;
		}
	}

