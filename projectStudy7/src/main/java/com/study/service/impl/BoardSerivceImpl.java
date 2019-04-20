package com.study.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.study.dao.BoardDao;
import com.study.service.BoardService;
import com.study.vo.MemberVO;

@Service("boardService")
public class BoardSerivceImpl implements BoardService{
	
	@Resource(name = "boardDao")
	private BoardDao boardDao;

	@Override
	public List<MemberVO> list(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return boardDao.list(map);
	}

	@Override
	public int insert(MemberVO vo) {
		// TODO Auto-generated method stub
		return boardDao.insert(vo);
	}

	@Override
	public MemberVO detail(int seq) {
		// TODO Auto-generated method stub
		return boardDao.detail(seq);
	}

	@Override
	public int update(MemberVO vo) {
		// TODO Auto-generated method stub
		return boardDao.update(vo);
	}

}
