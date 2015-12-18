package cz.jiripinkas.jba.service;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.Role;
import cz.jiripinkas.jba.repository.RoleRepository;

@Service
@Transactional
public class RoleService {

	private static final Logger logger = Logger.getLogger(RoleService.class);

	@Autowired
	private RoleRepository roleRepository;

	public List<Role> getTableData() {
		// TODO Auto-generated method stub
		logger.info("inside getTableData service");
		return roleRepository.findAll(
				new PageRequest(0, 20, Direction.ASC, "id")).getContent();
	}

	public void updateRoleTable(Role tmp) {
		logger.info("inside updateRoleTable service");

		Integer idtmp = tmp.getId();
		Role role = roleRepository.findOne(idtmp);

		role.setName(tmp.getName());

		roleRepository.save(role);
	}

}
