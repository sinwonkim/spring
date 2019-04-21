package com.study.dao;

import java.util.List;
import java.util.Map;

import com.study.vo.MemberVO;

public interface BoardDao {

	List<MemberVO> list(Map<String, Object> map);

	int insert(MemberVO vo);

	MemberVO detail(int seq);

	int update(MemberVO vo);

}
