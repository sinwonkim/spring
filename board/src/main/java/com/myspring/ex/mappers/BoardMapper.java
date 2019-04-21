package com.myspring.ex.mappers;

import java.util.List;

import com.myspring.ex.domain.BoardVO;

public interface BoardMapper {
	
	List<BoardVO> selectBoardList();
	
/*	Integer insertBoard(BoardVO boardVO);
	
	Integer deleteBoard(BoardVO boardVO);
	
	Integer updateBoard(BoardVO boardVo);*/

}
