package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
	
	@Autowired
	//private BoardService boardService;
	
	//게시판 메인(리스트)
	@GetMapping("/board")
	public String list() {
		
		return "/board/list";
		
	}
	
	//게시판 글쓰기폼
	@GetMapping("/board/writeForm")
	public String writeForm() {
		
		return "/board/writeForm";
		
	}
	
	//게시판 글쓰기폼
	/*
	 * @GetMapping("/board/write") public String write(@RequestParam("title")String
	 * title, @RequestParam("contents")String contents) {
	 * 
	 * boardService.write();
	 * 
	 * return "/board/list";
	 * 
	 * }
	 */

}
