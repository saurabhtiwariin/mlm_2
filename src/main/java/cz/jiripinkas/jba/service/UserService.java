package cz.jiripinkas.jba.service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.Commit;
import cz.jiripinkas.jba.entity.PasswordResetToken;
import cz.jiripinkas.jba.entity.Role;
import cz.jiripinkas.jba.entity.Transaction;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.entity.VerificationToken;
import cz.jiripinkas.jba.repository.CommitRepository;
import cz.jiripinkas.jba.repository.PasswordResetTokenRepository;
import cz.jiripinkas.jba.repository.RoleRepository;
import cz.jiripinkas.jba.repository.SecurityQuestionRepository;
import cz.jiripinkas.jba.repository.TransactionRepository;
import cz.jiripinkas.jba.repository.UserRepository;
import cz.jiripinkas.jba.repository.VerificationTokenRepository;

@Service
@Transactional
public class UserService {

	private static final Logger logger = Logger.getLogger(UserService.class);

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private CommitService commitService;

	@Autowired
	private TransactionService transactionService;

	@Autowired
	private CommitRepository commitRepository;

	@Autowired
	private VerificationTokenRepository tokenRepository;

	@Autowired
	private PasswordResetTokenRepository passwordTokenRepository;

	@Autowired
	private SecurityQuestionRepository securityQuestionRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private TransactionRepository transactionRepository;

	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	public List<User> findAll() {
		return userRepository.findAll();
	}

	public void changeUserPassword(final User user, final String password) {
		user.setPassword(encoder.encode(password));
		userRepository.save(user);
	}

	public void createVerificationTokenForUser(final User user,
			final String token) {
		tokenRepository.save(new VerificationToken(token, user));
	}

	public void createOTPForUser(final User usr, final String otp) {
		User user = findOne(usr.getId());
		user.setOtp(otp);
		userRepository.save(user);
	}

	public User findOne(int id) {
		// TODO Auto-generated method stub
		return userRepository.findOne(id);
	}

	/*
	 * @Transactional public User findOneWithBlogs(int id) { // TODO
	 * Auto-generated method stub User user = findOne(id); List<Blog> blogs =
	 * blogRepository.findByUser(user); for (Blog blog : blogs) {
	 * 
	 * List<Item> items = itemRepository.findByBlog(blog);
	 * 
	 * List<Item> items = itemRepository.findByBlog(blog, new PageRequest( 0,
	 * 10, Direction.DESC, "publishedDate")); blog.setItems(items); }
	 * user.setBlogs(blogs); return user; }
	 */
	public void save(User user, String regFor) {
		// TODO Auto-generated method stub
		user.setEnabled(false);
		user.setLife(0);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword()));

		user.setSecurityAnswer(encoder.encode(user.getSecurityAnswer()));

		List<Role> roles = new ArrayList<Role>();
		roles.add(roleRepository.findByName("ROLE_USER"));
		user.setRoles(roles);

		user.setDoj(new Date(System.currentTimeMillis()));

		userRepository.save(user);
	}

	public void giveReferralBonusAndPersist(User sponser, User commitUser,
			long l) {

		long bonus = l / 20;

		long bal = sponser.getBalance();
		long newBal = bal + bonus;

		sponser.setBalance(newBal);
		if (userRepository.save(sponser) != null) {
			transactionService.entryForDirectIncome(commitUser, sponser, bal,
					newBal);
		}

	}

	/*
	 * public Object findOneWithBlogs(String name) { // TODO Auto-generated
	 * method stub User user = userRepository.findByName(name); return
	 * findOneWithBlogs(user.getId()); }
	 */

	public void remove(int id) {
		// TODO Auto-generated method stub
		userRepository.delete(id);
	}

	public User findOne(String username) {
		// TODO Auto-generated method stub
		return userRepository.findByName(username);
	}

	public User getUser(Principal principal) {
		// TODO Auto-generated method stub
		return userRepository.findByName(principal.getName());

	}

	public boolean resetPassword(String pass, Principal principal) {
		// TODO Auto-generated method stub
		User user = getUser(principal);
		user.setPassword(encoder.encode(pass));
		/* user.setPassword(encoder.encode(pass)); */
		userRepository.save(user);
		return true;
	}

	public List<User> findAllDirectMembers(User user) {
		// TODO Auto-generated method stub

		List<User> downLineUsers = null;
		downLineUsers = userRepository.findBySponser(user);

		return downLineUsers;

	}

	public List<User> getTableData() {
		logger.info("inside getTableData service");
		return userRepository.findAll(
				new PageRequest(0, 20, Direction.ASC, "id")).getContent();
	}

	public void updateUserTable(User tmp) {
		logger.info("inside updateUserTable service");

		Integer idtmp = tmp.getId();
		User user = userRepository.findOne(idtmp);

		user.setAddress(tmp.getAddress());
		user.setBalance(tmp.getBalance());
		user.setCity(tmp.getCity());
		user.setCountry(tmp.getCountry());
		user.setDoj(tmp.getDoj());
		user.setEmail(tmp.getEmail());
		user.setGender(tmp.getGender());
		user.setMobNo(tmp.getMobNo());
		user.setName(tmp.getName());
		user.setOtp(tmp.getOtp());
		user.setPassword(tmp.getPassword());
		user.setPosition(tmp.getPosition());
		user.setSecurityAnswer(tmp.getSecurityAnswer());
		user.setState(tmp.getState());
		user.setSecurityQuestion(tmp.getSecurityQuestion());
		user.setSponser(tmp.getSponser());
		user.setEnabled(tmp.isEnabled());

		userRepository.save(user);

	}

	public VerificationToken getVerificationToken(String token) {
		return tokenRepository.findByToken(token);
	}

	public void saveRegisteredUser(User user) {
		// TODO Auto-generated method stub
		userRepository.save(user);
	}

	public VerificationToken generateNewVerificationToken(
			final String existingVerificationToken) {
		VerificationToken vToken = tokenRepository
				.findByToken(existingVerificationToken);
		vToken.updateToken(UUID.randomUUID().toString());
		vToken = tokenRepository.save(vToken);
		return vToken;
	}

	public User getUser(final String verificationToken) {
		final User user = tokenRepository.findByToken(verificationToken)
				.getUser();
		return user;
	}

	public User findUserByEmail(final String email) {
		return userRepository.findByEmail(email);
	}

	public void createPasswordResetTokenForUser(final User user,
			final String token) {
		final PasswordResetToken myToken = new PasswordResetToken(token, user);
		passwordTokenRepository.save(myToken);
	}

	public PasswordResetToken getPasswordResetToken(final String token) {
		return passwordTokenRepository.findByToken(token);
	}

	public void updateUserBalanceCronJob() {
		// TODO Auto-generated method stub
		List<User> users = userRepository.findByEnabled(true);
		for (User user : users) {

			long var = 0;
			List<Commit> commits = commitRepository.findByUser(user);
			for (Commit commit : commits) {
				var += commit.getAmount();
			}

			long bal = user.getBalance();
			long newBal = bal + (var / 10);
			user.setBalance(newBal);
			user.setLife(user.getLife() + 1);
			if (user.getLife() == 20) {
				Role roleAdmin = roleRepository.findOne(2);
				if (user.getRoles().contains(roleAdmin)) {
					var=0;
				}else{
					user.setEnabled(false);
				}
			}
			if (var != 0) {

				if (userRepository.save(user) != null) {
					Transaction transaction = new Transaction();
					transaction.setBalBeforeTran(bal);
					transaction.setBalAfterTran(newBal);
					transaction.setDateTransaction(new Date(System
							.currentTimeMillis()));
					transaction.setRemark("dailyIncome");
					transaction.setUser(user);
					transactionRepository.saveAndFlush(transaction);
				}
			}
		}
	}

	public void updateBalance(User user, long amount) {
		// TODO Auto-generated method stub
		logger.info("Inside updateBalance()");
		user.setBalance(user.getBalance() - amount);
		userRepository.save(user);
		logger.info("Inside updateBalance()");
	}

	public User findOne(Principal principal) {
		// TODO Auto-generated method stub
		return findOne(principal.getName());
	}

	public User findUserByPanNO(String panNo) {
		// TODO Auto-generated method stub
		return userRepository.findByPanNo(panNo);
	}

}
