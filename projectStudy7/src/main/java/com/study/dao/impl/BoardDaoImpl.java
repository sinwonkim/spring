package com.study.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.study.dao.BoardDao;
import com.study.vo.MemberVO;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao{

	@Autowired
	private SqlSessionTemplate sqlssion;
	
	@Override
	public List<MemberVO> list(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlssion.selectList("mapper.board", map);
	}

	@Override
	public int insert(MemberVO vo) {
		// TODO Auto-generated method stub
		return sqlssion.insert("mapper.insert", vo);
	}

	@Override
	public MemberVO detail(int seq) {
		// TODO Auto-generated method stub
		return sqlssion.selectOne("mapper.detail", seq);
	}

	@Override
	public int update(MemberVO vo) {
		// TODO Auto-generated method stub
		return sqlssion.update("mapper.update", vo);
	}

}
