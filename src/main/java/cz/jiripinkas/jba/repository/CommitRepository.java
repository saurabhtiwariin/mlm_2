package cz.jiripinkas.jba.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cz.jiripinkas.jba.entity.Commit;
import cz.jiripinkas.jba.entity.User;

public interface CommitRepository extends JpaRepository<Commit, Integer>{

	List<Commit> findByUser(User user);

	List<Commit> findByUser_IdAndStatus_Id(Integer integer, Integer integer2);

}
