package com.study.service;

import java.util.List;
import java.util.Map;

import com.study.vo.MemberVO;

public interface BoardService {

	List<MemberVO> list(Map<String, Object> map);

	int insert(MemberVO vo);

	MemberVO detail(int seq);

	int update(MemberVO vo);
}
