package com.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.domain.MemberVO;
import com.member.dao.memberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	memberDAO dao;

	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);

	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
  
	}

	@Override
	public void modify(MemberVO vo) throws Exception {
		dao.modify(vo);
		
	}

}
