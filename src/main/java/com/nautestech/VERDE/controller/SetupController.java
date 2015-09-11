package com.nautestech.VERDE.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SetupController {
	private static final Logger logger = LoggerFactory.getLogger(SetupController.class);

	@RequestMapping(value = "/setup/threshold", method = RequestMethod.GET)
	public void thresholdSetup() {
		logger.info("welcome to setup threshold");
	}
	
	@RequestMapping(value = "/setup/passwd", method = RequestMethod.GET)
	public void passwdSetup() {
		logger.info("welcome to setup passwd");
	}
	
	@RequestMapping(value = "/setup/alarm", method = RequestMethod.GET)
	public void alarmSetup() {
		logger.info("welcome to setup passwd");
	}
}
