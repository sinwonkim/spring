package com.spring.board1.service;

import java.util.List;

import com.spring.board1.domain.BoardVO;

public interface BoardService {

	List<BoardVO> selectList();

	int boardWrite(BoardVO boardVO);

	BoardVO boardDetail(int boardId);

	int boardUpdate(BoardVO boardVO);

	int boardDelete(BoardVO boardVO);


}
