package cz.jiripinkas.jba.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cz.jiripinkas.jba.entity.Transaction;
import cz.jiripinkas.jba.entity.User;

public interface TransactionRepository extends JpaRepository<Transaction, Integer>{

	List<Transaction> findByUser(User user);

	//Role findByName(String name);

}
