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

import cz.jiripinkas.jba.entity.Accept;
import cz.jiripinkas.jba.entity.Commit;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.repository.AcceptRepository;
import cz.jiripinkas.jba.repository.CommitRepository;
import cz.jiripinkas.jba.repository.StatusRepository;

@Service
@Transactional
public class AcceptService {

	private static final Logger logger = Logger.getLogger(AcceptService.class);

	@Autowired
	private StatusRepository statusRepository;

	@Autowired
	private AcceptRepository acceptRepository;

	@Autowired
	private CommitRepository commitRepository;

	public void save(Accept accept, User user) {
		// TODO Auto-generated method stub
		accept.setReqDate(new Date(System.currentTimeMillis()));
		accept.setUser(user);
		accept.setStatus(statusRepository.findOne(1));
		user.setBalance(user.getBalance() - accept.getAmount());
		acceptRepository.saveAndFlush(accept);
	}

	
	
	public List<Accept> getHelpData(User acceptor) {
		// TODO Auto-generated method stub
		/*
		 * return acceptRepository.getHelpData(acceptor);
		 */
		List<Accept> accepts = acceptRepository.getHelpData(acceptor);
		logger.info("GetHelp(Right Col) accepts size = " + accepts.size());
		return accepts;
	}

	public List<Accept> giveHelpData(User commitor) {
		// TODO Auto-generated method stub
		List<Accept> accepts = new ArrayList<Accept>();
		List<Commit> commits = commitRepository.findByUser(commitor);
		for (Commit commit : commits) {
			accepts.add(acceptRepository.giveHelpData(commit));
		}
		return accepts;

	}

	public List<Accept> getTableData() {
		// TODO Auto-generated method stub
		logger.info("inside getTableData service");
		return acceptRepository.findAll(
				new PageRequest(0, 20, Direction.DESC, "reqDate")).getContent();
	}

	public void updateAcceptTable(Accept tmp) {
		// TODO Auto-generated method stub
		logger.info("inside updateAcceptTable service");

		Integer idtmp = tmp.getId();
		Accept accept = acceptRepository.findOne(idtmp);
		accept.setAmount(tmp.getAmount());
		accept.setConfDate(tmp.getConfDate());

		// logger.info("Conf date : "+tmp.getConfDate());
		// logger.info("Req Date : "+tmp.getReqDate());

		accept.setReqDate(tmp.getReqDate());

		accept.setCommit(tmp.getCommit());
		accept.setStatus(tmp.getStatus());
		accept.setUser(tmp.getUser());

		acceptRepository.save(accept);
	}



	public void setStatus(Accept accept, int statusId) {
		// TODO Auto-generated method stub
		accept.setStatus(statusRepository.findOne(statusId));
		acceptRepository.save(accept);
	}



	public void setConfDate(Accept accept, Date date) {
		// TODO Auto-generated method stub
		accept.setConfDate(date);
		acceptRepository.save(accept);
	}



	public Accept findOne(Integer acceptId) {
		// TODO Auto-generated method stub
		return acceptRepository.findOne(acceptId);
	}

	/*
	 * @Transactional public User getAllAccepts(User user) { // TODO
	 * Auto-generated method stub List<Commit> commits =
	 * acceptRepository.findByUser(user); user.setCommits(commits); return user;
	 * }
	 */

}
