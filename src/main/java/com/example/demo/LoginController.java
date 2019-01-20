package com.example.demo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class LoginController {
 
	
	@Autowired
	UserRepo ur;
	@Autowired
	private Encryption enc;

	
	@ModelAttribute("user")
	public User setUpUserForm() {
	   return new User();
	}
	
	@RequestMapping("/login")
	String login()
	{
		return "login";
	}
	
	
	@RequestMapping("/signup")
	String signup()
	{
		return "signup";
	}
	@RequestMapping("/signin")
	String signin(@ModelAttribute("user") User user, HttpServletRequest request)
	{
		System.out.println(user.email+ user.password);
		String pass=enc.encryption(user.getPassword());
		if(ur.findByEmailAndPassword(user.email,pass)==null)
			return "index";
		else
		{
			User u1=ur.findByEmail(user.email);
			
			request.setAttribute("name",u1.name);
			
		}
		return "homepage";
	}
	
	
	@RequestMapping("/register")
	String register(@ModelAttribute User user,BindingResult bindingResult,HttpServletRequest request)
	{
		String pass=enc.encryption(user.getPassword());
		user.setPassword(pass);
		ur.save(user);
		return "index";
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) throws ServletException
	{ request.logout();
	//request.
	return "index";
	}
	
}
