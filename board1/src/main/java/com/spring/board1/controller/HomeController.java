package com.spring.board1.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board1.domain.BoardVO;
import com.spring.board1.service.BoardService;

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
		model.addAttribute("boardVO",boardVO );
		
		return "boardList";
	}
	
	@RequestMapping(value="/boardWrite", method = RequestMethod.GET)
	public String write() {
		
		return "boardWrite";
	}
	
	@ResponseBody
	@RequestMapping(value="/boardWrite", method = RequestMethod.POST)
	public int writeAction(BoardVO boardVO) {
		int result = boardService.boardWrite(boardVO);
		if(result==1) {
			return 1;
		}else {
			return 0;
		}
	}
	
	@RequestMapping(value="/boardDetail/{boardId}",method = RequestMethod.GET)
	public String boardDetail(@PathVariable("boardId")int boardId,Model model) {
		BoardVO boardVO = boardService.boardDetail(boardId);
		model.addAttribute("boardVO", boardVO);
		return "boardDetail";
	}
	
	@RequestMapping(value="/boardUpdate/{boardId}",method = RequestMethod.GET)
	public String boardUpdate(@PathVariable("boardId")int boardId,Model model) {
		BoardVO boardVO = boardService.boardDetail(boardId);
		model.addAttribute("boardVO", boardVO);
		return "boardUpdate";
	}
	
	@ResponseBody
	@RequestMapping(value="/boardUpdate", method = RequestMethod.POST)
	public int boardUpdate(BoardVO boardVO) {
		int result = boardService.boardUpdate(boardVO);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/boardDelete",method = RequestMethod.POST)
	public int boardDelete(BoardVO boardVO) {
		int result = boardService.boardDelete(boardVO);
		return result;
	}	
}
