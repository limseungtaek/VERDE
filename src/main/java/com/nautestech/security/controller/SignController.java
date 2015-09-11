package com.nautestech.security.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SignController {
	private static final Logger logger = LoggerFactory.getLogger(SignController.class);

    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String login(@RequestParam(value="error", required=false) String error, Model model) {

         return "login";
    }
	
	@RequestMapping(value = "/login_fail")
	public String login_fail() {
		logger.info("Welcome login_fail!");
		
		return "redirect:/login?error=true";
	}
	
	@RequestMapping(value = "/login_deny")
	public String login_deny() {
		logger.info("Welcome login_deny!");
		
		return "login_deny";
	}
	
	@RequestMapping(value = "/login_duplicate")
	public String login_duplicate() {
		logger.info("Welcome login_duplicate!");
		
		return "login_duplicate";
	}

}
