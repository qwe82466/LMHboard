package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.BoardVO;
import com.board.service.BoardService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {

	@Autowired
	private BoardService service;
	
	@GetMapping("list")
	public void list(Model model) {
		List<BoardVO> list=service.getList();
		log.info("보드컨트롤러 list");
		log.info(list);
		model.addAttribute("list", list);
		
	}
	
	@GetMapping("write")
	public void write() {
		
	}
	
}
