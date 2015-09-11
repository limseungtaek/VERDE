package com.nautestech.VERDE.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MonitoringController {
	
	private static final Logger logger = LoggerFactory.getLogger(MonitoringController.class);
	
	@RequestMapping(value = "/monitoring/server", method = RequestMethod.GET)
	public void serverMonitoring() {
		logger.info("welcome to monitoring server");
	}
	
	@RequestMapping(value = "/monitoring/session", method = RequestMethod.GET)
	public void sessionMonitoring() {
		logger.info("welcome to monitoring session");
	}
}
