package com.nautestech.VERDE.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.nautestech.VERDE.model.VerdeUser;
import com.nautestech.VERDE.model.XmlData;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home1";
//	}
	
	@RequestMapping( value = "/verdeLicense")
	public String RestVerdeLicense(Model model) throws URISyntaxException {
		
		RestTemplate restTemplate = new RestTemplate();

		String plainCreds = "mcadmin1:pass_1234";
		byte[] plainCredsBytes = plainCreds.getBytes();
		byte[] base64CredsBytes = Base64.encodeBase64(plainCredsBytes);
		String base64Creds = new String(base64CredsBytes);

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Basic " + base64Creds);
//		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		
		HttpEntity<String> request = new HttpEntity<String>(headers);
		URI url = new URI("http://netseason.iptime.org/mc/rest/verdeLicense");
		ResponseEntity<String> response = restTemplate.exchange(url , HttpMethod.GET, request, String.class);
		
		logger.info(response.getHeaders().toString());
		
		model.addAttribute("result", response.getBody() );
		
		return "rest";
	}
	
	@RequestMapping( value = "/verdeUser")
	public String Rest(Model model) throws URISyntaxException {
		
		RestTemplate restTemplate = new RestTemplate();

		String plainCreds = "mcadmin1:pass_1234";
		byte[] plainCredsBytes = plainCreds.getBytes();
		byte[] base64CredsBytes = Base64.encodeBase64(plainCredsBytes);
		String base64Creds = new String(base64CredsBytes);

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Basic " + base64Creds);
//		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		
		HttpEntity<String> request = new HttpEntity<String>(headers);
		URI url = new URI("http://netseason.iptime.org/mc/rest/verdeUser");
		ResponseEntity<VerdeUser> response = restTemplate.exchange(url , HttpMethod.GET, request, VerdeUser.class);
		
		logger.info(response.getHeaders().toString());
		
		List<XmlData> list = new ArrayList<XmlData>();
		list = response.getBody().getVerdeUser();
		String result = "";
		for(int i=0; i<list.size(); i++) {
			XmlData data = (XmlData)list.get(i);
			result += data.getName()+"|"+data.getValue()+"</br>\n";
		}
		
		logger.info(result);
		
		model.addAttribute("result",  result);
		
		return "rest";
	}
	
	@RequestMapping(value = "/sample/nwagon", method = RequestMethod.GET)
	public String nwagon() {
		return "Nwagon";
	}
	
}
