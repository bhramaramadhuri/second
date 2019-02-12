package com.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.model.Account;
import com.model.User;
import com.service.RegisterService;

@RestController
public class MainController {
	@Autowired
	RegisterService service;

	@RequestMapping(value = "/abc")
	public ModelAndView bank(User user) {
		return new ModelAndView("start");

	}

	@RequestMapping(value = "/startpage")

	public ModelAndView login(@ModelAttribute("use")User user) {
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/register")
	public ModelAndView register(@ModelAttribute("enter")User user) {
		return new ModelAndView("index");

	}
	@RequestMapping(value = "/saving")

	public ModelAndView register1(@ModelAttribute("enter") User user) {
		service.save(user);
		return new ModelAndView("success");
	}
	@RequestMapping(value = "/account")

	public ModelAndView newuse(@ModelAttribute("open") Account acc) {
		
		return new ModelAndView("bankaccount");
	}
	@RequestMapping(value = "/accdetails")

	public ModelAndView open(@ModelAttribute("open")Account acc) {
		service.save(acc);
		return new ModelAndView("success");
	}
	
	@RequestMapping(value = "/login")

	public ModelAndView login1(@ModelAttribute("enter") User user)
	{
		User use=null;
		 use = service.findByUserNameAndPassword(user);
		if(use!=null)
		{
		return new ModelAndView("complete");
		}
		else
		{
			return new ModelAndView("wrong");
		}
		
	}
	
	
}
