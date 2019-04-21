package com.spring.board4.mapper;

import java.util.List;

import com.spring.board4.domain.BoardVO;

public interface BoardMapper {

	List<BoardVO> selectList();

	int boardWrite(BoardVO boardVO);

	BoardVO boardDetail(int boardId);

	int boardUpdate(BoardVO boardVO);

	int boardDelete(BoardVO boardVO);

}
