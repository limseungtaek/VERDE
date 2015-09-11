package com.nautestech.VERDE.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NetController {

	private static final Logger logger = LoggerFactory.getLogger(NetController.class);
	
	@RequestMapping(value = "/net/server", method = RequestMethod.GET)
	public void serverCpu() {
		logger.info("welcome to net server");
	}
	
	@RequestMapping(value = "/net/vm", method = RequestMethod.GET)
	public void vmCpu() {
		logger.info("welcome to net vm");
	}
}
