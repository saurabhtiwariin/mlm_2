package cz.jiripinkas.jba.controller;

import java.security.Principal;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.service.BankDetailsService;
import cz.jiripinkas.jba.service.CommitService;
import cz.jiripinkas.jba.service.TransactionService;
import cz.jiripinkas.jba.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("currentUser")
public class HyperlinkControllerUser {

	private static final Logger logger = Logger
			.getLogger(HyperlinkControllerUser.class);

	@Autowired
	private UserService userService;

	@Autowired
	private CommitService commitService;

	@Autowired
	private TransactionService transactionService;
	
	@Autowired
	private BankDetailsService bankDetailsService;
	
	
	@RequestMapping("/binaryIncome")
	public String getBinaryIncome() {
		return "binaryIncome";
	}

	@RequestMapping("/directIncome")
	public String getDirectIncome() {
		return "directIncome";
	}

	@RequestMapping("/withdrawlReport")
	public String getWithdrawlReport() {
		return "withdrawlReport";
	}

	@RequestMapping("/acceptHelpReport")
	public String getAcceptHelpReport() {
		return "acceptHelpReport";
	}

	@RequestMapping("/ganealogy")
	public String getGanealogy(Model model, Principal principal) {
		User user = userService.getUser(principal);
		user.setDownlineUsers(userService.findAllDirectMembers(user));
		model.addAttribute("user", user);
		return "ganealogy";
	}

	@RequestMapping("/feedback")
	public String feedback() {
		return "feedback";
	}


	@RequestMapping("/welcomeLetter")
	public String getWelcomeLetter(Model model, Principal principal) {
		model.addAttribute("user", userService.getUser(principal));
		return "welcomeLetter";
	}

	@RequestMapping("/complaintForm")
	public String getComplaintForm() {
		return "complaintForm";
	}

	@RequestMapping("/complaintReport")
	public String getComplaintReport() {
		return "complaintReport";
	}

	@RequestMapping("/directMember")
	public String getDiretMember(Model model, Principal principal) {
		User user = userService.getUser(principal);
		user.setDownlineUsers(userService.findAllDirectMembers(user));
		model.addAttribute("user", user);
		return "directMember";

	}

	@RequestMapping("/myDownline")
	public String getMyDownline(Model model, Principal principal) {
		User user = userService.getUser(principal);
		user.setDownlineUsers(userService.findAllDirectMembers(user));
		model.addAttribute("user", user);
		return "myDownline";
	}
}
