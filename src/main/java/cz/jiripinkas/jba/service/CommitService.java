package cz.jiripinkas.jba.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.Commit;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.repository.CommitRepository;
import cz.jiripinkas.jba.repository.StatusRepository;
import cz.jiripinkas.jba.repository.UserRepository;

@Service
@Transactional
public class CommitService {

	private static final Logger logger = Logger.getLogger(CommitService.class);

	@Autowired
	private CommitRepository commitRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private AcceptService acceptService;

	@Autowired
	private TransactionService transactionService;

	@Autowired
	private StatusRepository statusRepository;

	/* saving the commit */
	@Transactional
	public boolean save(Commit commit, String name) {

		User user = userRepository.findByName(name);

		commit.setDateCommit(new Date(System.currentTimeMillis()));
		commit.setUser(user);
		commit.setStatus(statusRepository.findOne(1)); // Awaiting submission
		if (commitRepository.saveAndFlush(commit) != null) {
			/* make an entry in transaction table for this commit */
			long newBal = user.getBalance() + commit.getAmount() / 10;
			transactionService.entryForCommit(user, commit, newBal);

			/* saving user with increased balance */
			user.setBalance(newBal);
			userRepository.save(user);
			return true;
		}
		return false;
	}

	@Transactional
	public User getAllCommitments(User user) {
		// TODO Auto-generated method stub
		List<Commit> commits = commitRepository.findByUser(user);
		user.setCommits(commits);
		return user;
	}

	@Transactional
	public List<Commit> getAllCompletedCommitments(User user) {
		// TODO Auto-generated method stub
		List<Commit> completedCommits = new ArrayList<Commit>();

		User u = getAllCommitments(user);
		List<Commit> commits = u.getCommits();
		
		if (commits.size() != 0) {
			for (Commit commit : commits) {
				if (commit.getStatus().getId() == statusRepository.findOne(3).getId()) {
					completedCommits.add(commit);
				}
			}
		}
		logger.info("No of completed commits are " + completedCommits.size());
		return completedCommits;

	}

	public List<Commit> getTableData() {
		// TODO Auto-generated method stub
		return commitRepository.findAll(
				new PageRequest(0, 20, Direction.DESC, "dateCommit"))
				.getContent();
	}

	public void updateCommitTable(Commit tmp) {
		// TODO Auto-generated method stub
		logger.info("inside updateCommitTable service");
		Integer idtmp = tmp.getId();
		Commit commit = commitRepository.findOne(idtmp);
		commit.setAmount(tmp.getAmount());
		commit.setDateCommit(tmp.getDateCommit());
		commit.setDateConf(tmp.getDateConf());
		commit.setStatus(tmp.getStatus());
		commit.setUser(tmp.getUser());
		commitRepository.save(commit);
	}

	public void setChequeUploadDate(Commit commit) {
		// TODO Auto-generated method stub

		commit.setDateChequeUploaded(new Date(System.currentTimeMillis()));
		commitRepository.save(commit);
	}

	public void setConfDate(Commit commit, Date date) {
		// TODO Auto-generated method stub
		commit.setDateConf(date);
		commitRepository.save(commit);
	}

	public void setStatus(Commit commit, int status) {
		// TODO Auto-generated method stub
		logger.info("Inside SetStatusCommit()");
		commit.setStatus(statusRepository.findOne(status));
		commitRepository.save(commit);
		logger.info("Outside SetStatusCommit()");
	}

	public boolean allCommitsShouldBeAccepted(User user) {
		// TODO Auto-generated method stub
		List<Commit> allCommits = getAllCommitments(user).getCommits();
		List<Commit> allCompletedCommits = getAllCompletedCommitments(user);
		if (allCommits.size()==allCompletedCommits.size()) {
			return false;
		}
		return true;
	}

	/*
	 * @Transactional public List<Commit> findByUserAndStatus(User user, Status
	 * status) { // TODO Auto-generated method stub return
	 * commitRepository.findByUser_IdAndStatus_Id(user.getId(),status.getId());
	 * 
	 * }
	 */

}
