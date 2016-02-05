package cz.jiripinkas.jba.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cz.jiripinkas.jba.entity.Accept;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.service.AcceptService;
import cz.jiripinkas.jba.service.CommitService;
import cz.jiripinkas.jba.service.UserService;

@Controller
@EnableWebMvc
@RequestMapping("/user")
public class WithdrawlController {

	private static final Logger logger = Logger
			.getLogger(WithdrawlController.class);

	@Autowired
	private AcceptService acceptService;

	@Autowired
	private UserService userService;


	@Autowired
	private CommitService commitService;
	
	@ModelAttribute("accept")
	private Accept constructAccept() {
		return new Accept();
	}

	@RequestMapping("/withdrawl")
	public String getBankDetails(Model model, Principal principal) {
		User user = userService.findOne(principal);
		model.addAttribute("user", user);
		return "withdrawl";
	}
	
	@RequestMapping("/deleteAccept/{id}")
	public String deleteAccept(@PathVariable int id) {
		acceptService.delete(id);
		return "redirect:/admin/accept.html?page=0";
	}
	
	@RequestMapping("/addNewAccept/{id}")
	public String addNewAccept(@PathVariable int id) {
		acceptService.addNewAccept(id);
		return "redirect:/admin/accept.html?page=0";
	}

	@RequestMapping(value = "/withdrawl", method = RequestMethod.POST)
	public String doWithdrawl(@Valid @ModelAttribute("accept") Accept accept,Principal principal,
			HttpSession session, BindingResult result,
			RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			logger.info("Inside BindingResult withdrawl");
			return "/withdrawl";
		}
		User user = userService.findOne(principal);

		if (accept.getAmount() == 0 || user.getBalance() < accept.getAmount()) {
			redirectAttributes.addFlashAttribute("lowBal", true);
			return "redirect:/user/memberZone.html";
		}
		if (accept.getAmount() % 500 != 0) {
			redirectAttributes.addFlashAttribute("invalidAmount", true);
			return "redirect:/user/memberZone.html";
		}

		if (acceptService.allAcceptsShouldNotBeAcceptedExceptFirstAccept(user)) {
			redirectAttributes.addFlashAttribute("commitNotAcepptedYet", true);
			return "redirect:/user/memberZone.html";
		}
		/*
		 * 1/17/2016 - tism : It will stop withdrawal till you previous commit is accepted
		 */
		if (acceptService.allCommitsShouldNotBeAcceptedExceptFirstCommitForAccept(user)) {
			redirectAttributes.addFlashAttribute("commitNotAcepptedYet", true);
			return "redirect:/user/memberZone.html";
		}
		
		if (acceptService.tenDayCheck(user)) {
			redirectAttributes.addFlashAttribute("tenDayCheckFailed", true);
			return "redirect:/user/memberZone.html";
		}

		if (acceptService.save(accept, user)) {
			redirectAttributes.addFlashAttribute("success", true);
			return "redirect:/user/memberZone.html";			
		}
		

		return "redirect:/user/memberZone.html";
	}
}
