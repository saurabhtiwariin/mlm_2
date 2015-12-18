package cz.jiripinkas.jba.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import cz.jiripinkas.jba.entity.Accept;
import cz.jiripinkas.jba.entity.Commit;
import cz.jiripinkas.jba.entity.User;

public interface AcceptRepository extends JpaRepository<Accept, Integer>{

	
	@Query("Select a from Accept a where a.user = ?1 and a.status < 4")
	List<Accept> getHelpData(User userMe);
	
	
	@Query("Select a from Accept a where a.commit = ?1 and a.status < 4")
	Accept giveHelpData(Commit commit);


//	public List<Accept> findAllByUserAndStatus(User acceptor, Status status);
//	
//	@Query("update User u set u.firstname = ?1 where u.lastname = ?2")
//	int setFixedFirstnameFor(String firstname, String lastname);


}
