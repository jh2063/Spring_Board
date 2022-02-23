package com.member.service;

import com.board.domain.MemberVO;

public interface MemberService {

	// 회원가입
	public void register(MemberVO vo) throws Exception;

	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;

	// 회원 정보수정
	public void modify(MemberVO vo) throws Exception;
}
