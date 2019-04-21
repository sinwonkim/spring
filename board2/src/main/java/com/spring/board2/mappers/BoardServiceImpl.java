package com.spring.board2.mappers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board2.domain.BoardVO;
import com.spring.board2.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardMapper boardMapper;	
	
	@Override
	public List<BoardVO> selectList() {
		// TODO Auto-generated method stub
		return boardMapper.selectList();
	}

}
