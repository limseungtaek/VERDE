package com.nautestech.VERDE.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ModalController {
	private static final Logger logger = LoggerFactory.getLogger(ModalController.class);
	
	@RequestMapping(value = "/modal/contents", method = RequestMethod.GET)
	public ModelAndView contentsServer(
			@RequestParam(value = "data", required = true, defaultValue = "cpu") String data,
			@RequestParam(value = "view", required = true, defaultValue = "server") String view
			) {
		logger.info("welcome to modal Popup");

		ModelAndView mv = new ModelAndView();

        mv.setViewName("modalPopup/contents");
		
		return mv;
	}
}
