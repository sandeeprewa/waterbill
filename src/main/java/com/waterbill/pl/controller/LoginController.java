package com.waterbill.pl.controller;

import java.util.Collection;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;


@Controller
public class LoginController {
	
	@RequestMapping(value="/login", method=RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public String login(@RequestParam("userName") String userName,
			@RequestParam("password") String password,
			HttpServletResponse response, HttpServletRequest request){
		
		return "homePageForLogin";
	}
	
	@RequestMapping(value="isLoggedIn", method=RequestMethod.GET)
	@ResponseBody
	public String isLoggedIn(HttpServletRequest request, HttpSession session){
		String response="notLoggedIn";
		if(!session.isNew()){
			response="LoggedIn";
		}
		return response;
	}
	
}
