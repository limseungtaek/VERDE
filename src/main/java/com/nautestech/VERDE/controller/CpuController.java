package com.nautestech.VERDE.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CpuController {
	private static final Logger logger = LoggerFactory.getLogger(CpuController.class);
	
	@RequestMapping(value = "/cpu/server", method = RequestMethod.GET)
	public void serverCpu() {
		logger.info("welcome to cpu server");
	}
	
	@RequestMapping(value = "/cpu/vm", method = RequestMethod.GET)
	public void vmCpu() {
		logger.info("welcome to cpu vm");
	}
}
