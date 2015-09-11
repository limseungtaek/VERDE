package com.nautestech.VERDE.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemController {
	private static final Logger logger = LoggerFactory.getLogger(MemController.class);
	
	@RequestMapping(value = "/mem/server", method = RequestMethod.GET)
	public void serverMem() {
		logger.info("welcome to mem server");
	}
	
	@RequestMapping(value = "/mem/vm", method = RequestMethod.GET)
	public void vmMem() {
		logger.info("welcome to mem vm");
	}
}
