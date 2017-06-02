package com.shipment.management.impl.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipment.management.dto.UserDTO;
import com.shipment.management.ibo.IUserBO;
import com.shipment.management.idao.IUserDAO;

@Service
public class UserBO implements IUserBO {

	@Autowired
	IUserDAO iUserDAO;
	
	@Override
	public UserDTO loginUser(UserDTO user) {		
		return iUserDAO.loginUser(user);
	}

}
