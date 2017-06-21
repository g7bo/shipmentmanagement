package com.shipment.management.impl.dao;

import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shipment.management.dto.CustomerDTO;
import com.shipment.management.idao.ICustomerDAO;
import com.shipment.managemente.mapper.UserMapper;

@Repository
public class CustomerDAO implements ICustomerDAO {
	
	Logger logger = LoggerFactory.getLogger( CustomerDAO.class );
	
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	public CustomerDAO( DataSource dataSource ) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);		
	}
	

	@Override
	public void insertCustomer(CustomerDTO customer) {
		
		logger.debug("Realizando query....");
		
		String sql = "SELECT Name FROM User";
		List<String> usersName = jdbcTemplate.query(sql, new UserMapper());
		
		usersName.forEach( s -> logger.info("user: "+ s));
		

	}

}
