package cz.jiripinkas.jba.service;

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
	private StatusRepository statusRepository;

	@Transactional
	public void save(Commit commit, String name) {
		/*
		 * // TODO Auto-generated method stub SimpleDateFormat sdf = new
		 * SimpleDateFormat(""); sdf.format(new
		 * Date(System.currentTimeMillis()));
		 */
		User user = userRepository.findByName(name);
		user.setBalance(user.getBalance() + commit.getAmount()/10);
		userRepository.save(user);
		
		commit.setDateCommit(new Date(System.currentTimeMillis()));
		commit.setUser(user);
		commit.setStatus(statusRepository.findOne(1)); // Awaiting submission
		commitRepository.saveAndFlush(commit);
	}

	@Transactional
	public User getAllCommitments(User user) {
		// TODO Auto-generated method stub
		List<Commit> commits = commitRepository.findByUser(user);
		user.setCommits(commits);
		return user;
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

	/*
	 * @Transactional public List<Commit> findByUserAndStatus(User user, Status
	 * status) { // TODO Auto-generated method stub return
	 * commitRepository.findByUser_IdAndStatus_Id(user.getId(),status.getId());
	 * 
	 * }
	 */

}
