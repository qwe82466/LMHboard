package com.board.service;

import java.util.List;

import com.board.domain.BoardVO;

public interface BoardService {
		//전체 리스트 
		public List<BoardVO> getList();
		//글쓰기
		public void register(BoardVO board); 
}
