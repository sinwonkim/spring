package com.spring.board2.service;

import java.util.List;

import com.spring.board2.domain.BoardVO;

public interface BoardService {

	List<BoardVO> selectList();
}
