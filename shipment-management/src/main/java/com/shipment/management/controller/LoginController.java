package com.shipment.management.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shipment.management.dto.UserDTO;
import com.shipment.management.ibo.IUserBO;

@Controller
public class LoginController {
	
	@Autowired
	IUserBO iUserBO;
	
	@RequestMapping(value="/inicio")
	public ModelAndView goBienvenida(){		
		return new ModelAndView("bienvenida", "bienvenida", iUserBO.loginUser(new UserDTO()));		
	}

}
