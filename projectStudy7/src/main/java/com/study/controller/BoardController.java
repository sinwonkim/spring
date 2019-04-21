package com.study.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.service.BoardService;
import com.study.vo.MemberVO;

@Controller
public class BoardController {

	
	@Autowired
	private SqlSessionTemplate sqlssion;
	
	@Resource(name = "boardService")
	private BoardService boardservice;
	
	@RequestMapping("board")
	public String board(Model model, @RequestParam Map<String, Object> map){
		
		List<MemberVO> list = new ArrayList<MemberVO>();
		if(map.get("search")==null){
			map.put("search", "all");
		}
		
		if(map.get("pageNo")==null){
			map.put("pageNo", 1);
		}
		
		map.put("listSize", 7);
		
		int total = sqlssion.selectOne("mapper.total", map);
		list = boardservice.list(map);
		model.addAttribute("board", list);
		model.addAttribute("total", total);
		return "board/list";
	}
	
	@RequestMapping("boardAjax")
	public String boardAjax(Model model, @RequestParam Map<String, Object> map){
		List<MemberVO> list = new ArrayList<MemberVO>();
		if(map.get("search")==null){
			map.put("search", "all");
		}
		
		if(map.get("pageNo")==null){
			map.put("pageNo", 1);
		}
		
		map.put("listSize", 7);
		
		int total = sqlssion.selectOne("mapper.total", map);
		list = boardservice.list(map);
		model.addAttribute("board", list);
		model.addAttribute("total", total);
		return "board/boardAjax";
	}
	
	@RequestMapping("writeView")
	public String writeView(){
		return "board/write";
	}
	
	@RequestMapping("write")
	public String write(MemberVO vo){
//		String memID = request.getParameter("mmmaaa");
//		String memName = request.getParameter("MEM_ID");
//		String subject = request.getParameter("BOARD_SUBJECT");
//		String content = request.getParameter("BOARD_CONTENT");
//		
//		BoardVO vo = new BoardVO();
//		vo.setMEM_ID(memID);
//		vo.setMEM_NAME(memName);
		
		int insert = boardservice.insert(vo);
		if(insert ==1){
			
		}else{
			
		}
		
		return "redirect:board";
	}
	
	@RequestMapping("detail")
	public String detail(@RequestParam int seq, Model model){
		MemberVO vo = new MemberVO();
		vo = boardservice.detail(seq);
		model.addAttribute("vo", vo);
		return "board/write";
	}
	
	@RequestMapping("update")
	public String update(MemberVO vo){
//		String memID = request.getParameter("mmmaaa");
//		String memName = request.getParameter("MEM_ID");
//		String subject = request.getParameter("BOARD_SUBJECT");
//		String content = request.getParameter("BOARD_CONTENT");
//		
//		BoardVO vo = new BoardVO();
//		vo.setMEM_ID(memID);
//		vo.setMEM_NAME(memName);
		
		int update = boardservice.update(vo);
		
		return "redirect:board";
	}
	
	@RequestMapping("delete")
	public String delete(Integer[] chk){
		
		List<Integer> list = Arrays.asList(chk);
		int delete = sqlssion.delete("mapper.delete", list);
		
		return "redirect:board";
	}
	
	@RequestMapping("ajaxTest")
	public String ajaxTest(){
		return "ajaxTest";
	}
	
	@RequestMapping("ajaxStudy")
//	@ResponseBody
	public String ajaxStudy(){
		return "testJsp";
	}
	
	
}
