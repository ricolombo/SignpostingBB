package com.bestbuy.mexico.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/users")
public class LoginController {
	@RequestMapping(value = "/sign_out", method =RequestMethod.GET)
	public String logoutPage() {
		return "logout";
	}

	@RequestMapping(value = "/sign_in", method =RequestMethod.GET)
	public String loginPage() {
		return "login";
	}
}

