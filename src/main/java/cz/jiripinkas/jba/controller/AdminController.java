package cz.jiripinkas.jba.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cz.jiripinkas.jba.entity.Accept;
import cz.jiripinkas.jba.entity.BankDetails;
import cz.jiripinkas.jba.entity.Commit;
import cz.jiripinkas.jba.entity.Complaint;
import cz.jiripinkas.jba.entity.FileUpload;
import cz.jiripinkas.jba.entity.Role;
import cz.jiripinkas.jba.entity.SecurityQuestion;
import cz.jiripinkas.jba.entity.Status;
import cz.jiripinkas.jba.entity.Transaction;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.service.AcceptService;
import cz.jiripinkas.jba.service.BankDetailsService;
import cz.jiripinkas.jba.service.CommitService;
import cz.jiripinkas.jba.service.ComplaintService;
import cz.jiripinkas.jba.service.FileUploadService;
import cz.jiripinkas.jba.service.RoleService;
import cz.jiripinkas.jba.service.SecurityQuestionService;
import cz.jiripinkas.jba.service.StatusService;
import cz.jiripinkas.jba.service.TransactionService;
import cz.jiripinkas.jba.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = Logger
			.getLogger(AdminController.class);

	@Autowired
	private AcceptService acceptService;

	@Autowired
	private CommitService commitService;

	@Autowired
	private BankDetailsService bankDetailsService;

	@Autowired
	private ComplaintService complaintService;

	@Autowired
	private StatusService statusService;

	@Autowired
	private FileUploadService fileUploadService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private SecurityQuestionService securityQuestionService;
	
	@Autowired
	private TransactionService transactionService;
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/dashboard")
	public String dashboard() {
		return "adminDashboard";
	}

	/* User table */
	
	@ModelAttribute("user")
	private User userModel() {
		logger.info("Inside userModel()");
		return new User();
	}

	@RequestMapping("/user")
	public String userGet(Model model) {
		logger.info("Inside userGet");
		List<User> users= userService.getTableData();
		model.addAttribute("users", users);
		return "adminUser";
	}

	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String userPost(Model model,
			@ModelAttribute("user") User user,
			BindingResult result, RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return userGet(model);
		}
		logger.info("inside post no binding result");

		userService.updateUserTable(user);

		redirectAttributes.addFlashAttribute("userTableUpdated", true);
		return "redirect:/admin/user.html";
	}

	/* User table ENDS */

	
	/* transaction table */
	
	@ModelAttribute("transaction")
	private Transaction transactionModel() {
		logger.info("Inside transactionModel()");
		return new Transaction();
	}

	@RequestMapping("/transaction")
	public String transactionGet(Model model) {
		logger.info("Inside status Get");
		List<Transaction> transactions= transactionService.getTableData();
		model.addAttribute("transactions", transactions);
		return "adminTransaction";
	}

	@RequestMapping(value = "/transaction", method = RequestMethod.POST)
	public String updateTransactionTableAdmin(Model model,
			@ModelAttribute("transaction") Transaction transaction,
			BindingResult result, RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return transactionGet(model);
		}
		logger.info("inside post no binding result");

		transactionService.updateTransactionTable(transaction);

		redirectAttributes.addFlashAttribute("transactionTableUpdated", true);
		return "redirect:/admin/transaction.html";
	}

	/* transaction table ENDS */

	/* Status table */
	
	@ModelAttribute("status")
	private Status statusModel() {
		logger.info("Inside statusModel()");
		return new Status();
	}

	@RequestMapping("/status")
	public String statusGet(Model model) {
		logger.info("Inside status Get");
		List<Status> statuses= statusService.getTableData();
		model.addAttribute("statuses", statuses);
		return "adminStatus";
	}

	@RequestMapping(value = "/status", method = RequestMethod.POST)
	public String statusPost(Model model,
			@ModelAttribute("status") Status status,
			BindingResult result, RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return statusGet(model);
		}
		logger.info("inside post no binding result");

		statusService.updateStatusTable(status);

		redirectAttributes.addFlashAttribute("statusTableUpdated", true);
		return "redirect:/admin/status.html";
	}

	/* Status table ENDS */

	/* securityQuestion table */

	@ModelAttribute("securityQuestion")
	private SecurityQuestion securityQuestionModel() {
		logger.info("Inside securityQuestionModel()");
		return new SecurityQuestion();
	}

	@RequestMapping("/securityQuestion")
	public String securityQuestionGet(Model model) {
		logger.info("Inside securityQuestion Get");
		List<SecurityQuestion> securityQuestions = securityQuestionService.getTableData();
		model.addAttribute("securityQuestions", securityQuestions);
		return "adminSecurityQuestion";
	}

	@RequestMapping(value = "/securityQuestion", method = RequestMethod.POST)
	public String securityQuestionPost(Model model,
			@ModelAttribute("securityQuestion") SecurityQuestion securityQuestion,
			BindingResult result, RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return securityQuestionGet(model);
		}
		logger.info("inside post no binding result");

		securityQuestionService.updateRoleTable(securityQuestion);

		redirectAttributes.addFlashAttribute("securityQuestionTableUpdated", true);
		return "redirect:/admin/securityQuestion.html";
	}

	/* Security Question ENDS */

	
	/* Role table */

	@ModelAttribute("role")
	private Role roleModel() {
		logger.info("Inside roleModel()");
		return new Role();
	}

	@RequestMapping("/role")
	public String roleGet(Model model) {
		logger.info("Inside role Get");
		List<Role> roles= roleService.getTableData();
		model.addAttribute("roles", roles);
		return "adminRole";
	}

	@RequestMapping(value = "/role", method = RequestMethod.POST)
	public String rolePost(Model model,
			@ModelAttribute("role") Role role,
			BindingResult result, RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return roleGet(model);
		}
		logger.info("inside post no binding result");

		roleService.updateRoleTable(role);

		redirectAttributes.addFlashAttribute("roleTableUpdated", true);
		return "redirect:/admin/role.html";
	}

	/* Role table ENDS */

	
	/* File Upload table */

	@ModelAttribute("fileUpload")
	private FileUpload fileUploadModel() {
		logger.info("Inside fileUploadModel()");
		return new FileUpload();
	}

	@RequestMapping("/fileUpload")
	public String fileUploadGet(Model model) {
		logger.info("Inside fileUpload Get");
		List<FileUpload> fileUploads= fileUploadService.getTableData();
		model.addAttribute("fileUploads", fileUploads);
		return "adminFileUpload";
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
	public String complaintPost(Model model,
			@ModelAttribute("fileUpload") FileUpload fileUpload,
			BindingResult result, RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return fileUploadGet(model);
		}
		logger.info("inside post no binding result");

		fileUploadService.updateFileUploadTable(fileUpload);

		redirectAttributes.addFlashAttribute("fileUploadTableUpdated", true);
		return "redirect:/admin/fileUpload.html";
	}

	/* File Upload table ENDS */

	
	/* Complaint table */

	@ModelAttribute("complaint")
	private Complaint complaintModel() {
		logger.info("Inside complaintModel()");
		return new Complaint();
	}

	@RequestMapping("/complaint")
	public String complaintGet(Model model) {
		logger.info("Inside complaint get");
		List<Complaint> complaints= complaintService.getTableData();
		model.addAttribute("complaints", complaints);
		return "adminComplaint";
	}

	@RequestMapping(value = "/complaint", method = RequestMethod.POST)
	public String complaintPost(Model model,
			@ModelAttribute("complaint") Complaint complaint,
			BindingResult result, RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return complaintGet(model);
		}
		logger.info("inside post no binding result");

		complaintService.updateComplaintTable(complaint);

		redirectAttributes.addFlashAttribute("complaintTableUpdated", true);
		return "redirect:/admin/complaint.html";
	}

	/* Complaint table ENDS */

	/* BankDetails table */

	@ModelAttribute("bankDetails")
	private BankDetails bankDetailsModel() {
		logger.info("Inside bankDetailsModel()");
		return new BankDetails();
	}

	@RequestMapping("/bankDetails")
	public String bankDetailsGet(Model model) {
		logger.info("Inside bankDetails get");
		List<BankDetails> bankDetailsList = bankDetailsService.getTableData();
		model.addAttribute("bankDetailsList", bankDetailsList);
		return "adminBankDetails";
	}

	@RequestMapping(value = "/bankDetails", method = RequestMethod.POST)
	public String commitPost(Model model,
			@ModelAttribute("bankDetails") BankDetails bankDetails,
			BindingResult result, RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return bankDetailsGet(model);
		}
		logger.info("inside post no binding result");
		// acceptService.updateAcceptTable(accept, idPath);
		bankDetailsService.updateBankDetailsTable(bankDetails);

		redirectAttributes.addFlashAttribute("bankDetailsTableUpdated", true);
		return "redirect:/admin/bankDetails.html";
	}

	/* BankDetails table ENDS */

	/* Commit table */

	@ModelAttribute("commit")
	private Commit commitModel() {
		logger.info("Inside commitModel()");
		return new Commit();
	}

	@RequestMapping("/commit")
	public String commitGet(Model model) {
		logger.info("Inside commit get");
		List<Commit> commits = commitService.getTableData();
		model.addAttribute("commits", commits);
		return "adminCommit";
	}

	@RequestMapping(value = "/commit", method = RequestMethod.POST)
	public String commitPost(Model model,
			@ModelAttribute("commit") Commit commit, BindingResult result,
			RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return commitGet(model);
		}
		logger.info("inside post no binding result");
		// acceptService.updateAcceptTable(accept, idPath);
		commitService.updateCommitTable(commit);

		redirectAttributes.addFlashAttribute("commitTableUpdated", true);
		return "redirect:/admin/commit.html";
	}

	/* Commit table ENDS */

	/* Accept table */

	@ModelAttribute("accept")
	private Accept acceptModel() {
		logger.info("Inside acceptModel()");
		return new Accept();
	}

	@RequestMapping("/accept")
	public String acceptGet(Model model) {
		logger.info("Inside accept get");
		List<Accept> accepts = acceptService.getTableData();
		model.addAttribute("accepts", accepts);
		return "adminAccept";
	}

	@RequestMapping(value = "/accept", method = RequestMethod.POST)
	public String acceptPost(Model model,
			@ModelAttribute("accept") Accept accept, BindingResult result,
			RedirectAttributes redirectAttributes) {
		logger.info("inside post *******************");
		if (result.hasErrors()) {
			logger.info("inside binding result");
			return acceptGet(model);
		}
		logger.info("inside post no binding result");
		// acceptService.updateAcceptTable(accept, idPath);
		acceptService.updateAcceptTable(accept);

		redirectAttributes.addFlashAttribute("acceptTableUpdated", true);
		return "redirect:/admin/accept.html";
	}

	/* Accept table ENDS */

	/*
	 * @RequestMapping("/accept") public String accept(Model model) {
	 * logger.info("inside accept controller"); List<Accept> accepts =
	 * acceptService.getTableData(); logger.info(accepts.get(0).getId());
	 * model.addAttribute("accepts",accepts);
	 * logger.info("outside getTableData service");
	 * logger.info("outside accept controller"); return "adminAccept"; }
	 */

	/* ajax loading */
	/*
	 * @RequestMapping(value = "/allStatuses")
	 * 
	 * @ResponseBody public void allStatuses(@RequestParam("st") Integer
	 * statusId, HttpServletResponse response) throws IOException { PrintWriter
	 * out = response.getWriter();
	 * 
	 * 
	 * logger.info("Inside allStatuses()"); String res = ""; List<Status>
	 * statuses = statusService.findAll(); Status currentStatus =
	 * statusService.findOne(statusId);
	 * 
	 * res += "<select name=\"statusSelect\" id=\"statusSelect\" >";
	 * 
	 * res += "<option value=\"" + currentStatus.getId() +
	 * "\" selected=\"selected\">" + currentStatus.getName() + "</option>";
	 * 
	 * for (Iterator<Status> iterator = statuses.iterator(); iterator
	 * .hasNext();) { Status status = (Status) iterator.next(); res +=
	 * "<option value=\"" + status.getId() + "\">" + status.getName() +
	 * "</option>";
	 * 
	 * } res += "</select>"; out.println(res);
	 * logger.info("Inside ajax allStatuses" + res); // return res; }
	 */
}