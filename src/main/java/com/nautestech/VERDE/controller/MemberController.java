package com.nautestech.VERDE.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
    private SessionRegistry sessionRegistry;
	
	@PreAuthorize("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "/")
	public ModelAndView index(Principal principal) {
		// 霉锅掳 规过
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		logger.info(auth.toString());
		
		// 技锅掳 规过
//		logger.info(principal.toString());
		
		int allsessionCount = sessionRegistry.getAllPrincipals().size();
		
		List<Object> list = new ArrayList<Object>();
		list = sessionRegistry.getAllPrincipals();
		
		logger.info("all session count : {}",allsessionCount);
		
		for(int i=0; i<allsessionCount; i++) {
			Object sessionData = (Object)list.get(i);
			
			logger.info("session name : {}",sessionData.toString());
		}
		ModelAndView mv = new ModelAndView();

        mv.setViewName("monitoring/server");
        mv.addObject("test", "testData");

        return mv;
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin() {
	     return "admin";
	}
	
	@PreAuthorize("hasRole('ROLE_USER')")
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String admin_test() {
         return "user";
    }
}
