package cz.jiripinkas.jba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HyperlinkControllerBoth {
	@RequestMapping("/faq")
	public String businessPlan() {
		return "faq";
	}

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/contactUs")
	public String contactUs() {
		return "contactUs";
	}

	@RequestMapping("/businessPlan")
	public String howItWorks() {
		return "businessPlan";
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
	@RequestMapping("/updatePassword")
	public String updatePassword() {
		return "updatePassword";
	}
}
