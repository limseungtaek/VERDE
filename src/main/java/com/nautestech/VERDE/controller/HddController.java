package com.nautestech.VERDE.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HddController {
	private static final Logger logger = LoggerFactory.getLogger(HddController.class);
	
	@RequestMapping(value = "/hdd/server", method = RequestMethod.GET)
	public void serverHdd() {
		logger.info("welcome to hdd server");
	}
	
	@RequestMapping(value = "/hdd/vm", method = RequestMethod.GET)
	public void vmHdd() {
		logger.info("welcome to hdd vm");
	}
}
