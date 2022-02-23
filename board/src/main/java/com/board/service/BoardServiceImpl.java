package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.BoardDAO;
import com.board.domain.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
//코드 자체는 BoardDAOImpl와 크게 다르지 않지만, BoardDAOImpl와 다른 역할을 맡고있음.

	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public void write(BoardVO vo) throws Exception {
		dao.write(vo);
	}

	@Override
	public BoardVO view(int bno) throws Exception {
		// 조횟수 카운팅 추가
		dao.viewCount(bno);
		return dao.view(bno);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {
		dao.modify(vo);

	}

	@Override
	public void delete(int bno) throws Exception {
		 dao.delete(bno);
		
	}

	@Override
	public int count() throws Exception {
		 return dao.count();
	}

	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		 return dao.listPage(displayPost, postNum);
	}


}
