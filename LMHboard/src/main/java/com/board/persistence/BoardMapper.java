package com.board.persistence;

import java.util.List;

import com.board.domain.BoardVO;

public interface BoardMapper {

	//CRUD
	
	//전체 리스트 
	public List<BoardVO> getList();
	
	public void register(BoardVO board); 
	 
	
}
