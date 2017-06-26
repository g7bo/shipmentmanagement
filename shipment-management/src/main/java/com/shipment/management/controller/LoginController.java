package com.shipment.management.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shipment.management.dto.CustomerDTO;
import com.shipment.management.dto.UserDTO;
import com.shipment.management.ibo.ICustomerBO;
import com.shipment.management.ibo.IUserBO;

@Controller
public class LoginController {
	
	@Autowired
	IUserBO iUserBO;
	
	@Autowired
	ICustomerBO iCustomerBO;
	
	@ResponseBody
	@RequestMapping(value="/inicio.do")
	public ModelAndView goBienvenida(){
		//return new ResponseEntity(HttpStatus.OK);
		System.out.println("Entra a login...");
		iCustomerBO.insertCustomer( new CustomerDTO() );
		return new ModelAndView("bienvenida", "bienvenida", iUserBO.loginUser(new UserDTO()));		
	}

}
