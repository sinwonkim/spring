package com.myspring.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myspring.ex.mappers.BoardMapper;


@Controller
public class HomeController {
	
	@Autowired
	BoardMapper boardMapper;
		
	/*@ResponseBody*/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "boardList";
	}
	
}
