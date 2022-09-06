package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.domain.BoardVO;
import com.board.persistence.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList() {
		
		return mapper.getList();
	}

	@Override
	public void register(BoardVO board) {
		mapper.register(board);
		
	}
	

}
