package cz.jiripinkas.jba.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cz.jiripinkas.jba.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

	User findByName(String name);

	List<User> findBySponser(User user);

	User findByEmail(String email);

	User findByPanNo(String panNo);
	
	List<User> findByEnabled(boolean b);
}
