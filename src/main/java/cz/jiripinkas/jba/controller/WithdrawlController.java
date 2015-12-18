package cz.jiripinkas.jba.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cz.jiripinkas.jba.entity.Accept;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.service.AcceptService;

@Controller
@EnableWebMvc
@RequestMapping("/user")
public class WithdrawlController {

	private static final Logger logger = Logger
			.getLogger(WithdrawlController.class);

	@Autowired
	private AcceptService acceptService;

	@ModelAttribute("accept")
	private Accept constructAccept() {
		return new Accept();
	}

	@RequestMapping("/withdrawl")
	public String getBankDetails(Model model, HttpSession session) {
		User user = (User) session.getAttribute("currentUser");
		model.addAttribute("user", user);
		return "withdrawl";
	}

	@RequestMapping(value = "/withdrawl", method = RequestMethod.POST)
	public String doRegister(@Valid @ModelAttribute("accept") Accept accept,
			HttpSession session, BindingResult result,
			RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			logger.info("Inside BindingResult");
			return "/withdrawl";
		}
		User user = (User) session.getAttribute("currentUser");
		
		if (accept.getAmount()==0 || user.getBalance()<accept.getAmount()) {
			redirectAttributes.addFlashAttribute("lowBal", true);	
			return "redirect:/user/memberZone.html";
		}
		if(accept.getAmount() % 1000 != 0){
			redirectAttributes.addFlashAttribute("invalidAmount", true);	
			return "redirect:/user/memberZone.html";	
		}
			redirectAttributes.addFlashAttribute("success", true);		
			acceptService.save(accept, user);
			
		return "redirect:/user/memberZone.html";
	}
}
