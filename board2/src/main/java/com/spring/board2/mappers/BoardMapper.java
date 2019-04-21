package com.spring.board2.mappers;

import java.util.List;

import com.spring.board2.domain.BoardVO;

public interface BoardMapper {
	List<BoardVO> selectList();
}
