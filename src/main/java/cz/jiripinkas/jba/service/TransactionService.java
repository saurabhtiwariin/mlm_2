package cz.jiripinkas.jba.service;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.Transaction;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.repository.StatusRepository;
import cz.jiripinkas.jba.repository.TransactionRepository;
import cz.jiripinkas.jba.repository.UserRepository;

@Service
@Transactional
public class TransactionService {
	private static final Logger logger = Logger
			.getLogger(TransactionService.class);

	@Autowired
	private TransactionRepository transactionRepository;

	@Autowired
	private StatusRepository statusRepository;

	@Autowired
	private UserRepository userRepository;

	public List<Transaction> findByUser(User user) {
		// TODO Auto-generated method stub
		List<Transaction> transactions = transactionRepository.findByUser(user);
		return transactions;
	}

	public List<Transaction> getTableData() {
		logger.info("inside getTableData service");
		return transactionRepository.findAll(
				new PageRequest(0, 20, Direction.DESC, "dateTransaction"))
				.getContent();
	}

	public void updateTransactionTable(Transaction tmp) {
		// TODO Auto-generated method stub
		logger.info("inside updateTransactionTable service");

		Integer idtmp = tmp.getId();
		Transaction transaction = transactionRepository.findOne(idtmp);

		transaction.setAmount(tmp.getAmount());
		transaction.setAfterTransactionAmount(tmp.getAfterTransactionAmount());
		transaction.setDateTransaction(tmp.getDateTransaction());
		transaction.setRemark(tmp.getRemark());
		transaction.setAccept(tmp.getAccept());
		transaction.setBankDetails(tmp.getBankDetails());
		transaction.setStatus(tmp.getStatus());
		transaction.setUser(tmp.getUser());
		transactionRepository.save(transaction);

	}

	/*
	 * public void saveByCommit(Commit commit, User user) { // TODO
	 * Auto-generated method stub Transaction transaction = new Transaction();
	 * transaction.setCommit(commit);
	 * 
	 * transaction.setAmount(user.getBalance());
	 * transaction.setAfterTransactionAmount
	 * (commit.getAmount()+user.getBalance());
	 * transaction.setBankDetails(user.getBankDetails());
	 * transaction.setDateTransaction(new Date(System.currentTimeMillis()));
	 * transaction.setStatus(statusRepository.findOne(9));
	 * transaction.setUser(user);
	 * 
	 * transactionRepository.save(transaction); }
	 */
}
