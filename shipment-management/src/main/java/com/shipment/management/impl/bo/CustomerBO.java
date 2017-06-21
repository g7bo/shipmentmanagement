package com.shipment.management.impl.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipment.management.dto.CustomerDTO;
import com.shipment.management.ibo.ICustomerBO;
import com.shipment.management.idao.ICustomerDAO;

@Service
public class CustomerBO implements ICustomerBO {
	
	@Autowired
	ICustomerDAO iCustomerDAO;

	@Override
	public void insertCustomer(CustomerDTO customer) {
		iCustomerDAO.insertCustomer(customer);
	}

}
