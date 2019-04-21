package com.spring.board4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board4.domain.BoardVO;
import com.spring.board4.mapper.BoardMapper;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> selectList() {
		// TODO Auto-generated method stub
		return boardMapper.selectList();
	}

	@Override
	public int boardWrite(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardMapper.boardWrite(boardVO);
	}

	@Override
	public BoardVO boardDetail(int boardId) {
		// TODO Auto-generated method stub
		return boardMapper.boardDetail(boardId);
	}

	@Override
	public int boardUpdate(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardMapper.boardUpdate(boardVO);
	}

	@Override
	public int boardDelete(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardMapper.boardDelete(boardVO);
	}

}
