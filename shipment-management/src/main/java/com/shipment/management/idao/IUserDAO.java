package com.shipment.management.idao;

import com.shipment.management.dto.UserDTO;

public interface IUserDAO {
	
	public UserDTO loginUser( UserDTO user );

}
