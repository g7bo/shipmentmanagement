package com.shipment.management.impl.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.shipment.management.dto.UserDTO;
import com.shipment.management.idao.IUserDAO;

@Repository
public class UserDAO implements IUserDAO {

	private static final Logger logger = LoggerFactory.getLogger( UserDAO.class );
	
	@Override
	public UserDTO loginUser(UserDTO user) {
		logger.debug("En %", this.getClass().getSimpleName() );
		return null;
	}

}
