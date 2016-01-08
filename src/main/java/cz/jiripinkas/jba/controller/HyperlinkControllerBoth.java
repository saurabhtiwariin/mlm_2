package cz.jiripinkas.jba.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cz.jiripinkas.jba.service.UserService;

@Controller
public class HyperlinkControllerBoth {

	@Autowired
	private UserService userService;

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/program")
	public String program() {
		return "program";
	}

	@RequestMapping("/faq")
	public String businessPlan() {
		return "faq";
	}

	@RequestMapping("/ss")
	public String successStories() {
		return "ss";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/about")
	public String howItWorks() {
		return "about";
	}

	@RequestMapping("/contactUs")
	public String contactUs() {
		return "contactUs";
	}

	@RequestMapping("/updatePassword")
	public String updatePassword() {
		return "updatePassword";
	}

	@RequestMapping("/forgetPassword")
	public String forgetPassword() {
		return "forgetPassword";
	}

	@RequestMapping("/invalidSession")
	public String invalidSession() {
		return "invalidSession";
	}

	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}

}
