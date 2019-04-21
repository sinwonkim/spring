package com.spring.board2.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board2.domain.BoardVO;
import com.spring.board2.mappers.BoardMapper;
import com.spring.board2.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<BoardVO> boardVO = boardService.selectList();
		model.addAttribute("boardVO", boardVO);
		
		return "boardList";
	}
	
	@RequestMapping(value="/boardWrite", method = RequestMethod.GET)
	public String boardWrite() {
		
		return "boardWrite";
	}
	
	@ResponseBody
	@RequestMapping(value="/boardWrite", method = RequestMethod.POST)
	public String boardWrite(BoardVO boardVO) {
		
		return "boardWrite";
	}
	
}
