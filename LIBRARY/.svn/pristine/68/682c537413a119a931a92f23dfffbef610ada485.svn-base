package com.kh.library.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/otherB")
public class OtherBoardController {

	@GetMapping("/freeBoard")
	public String freeBoardList() {
		
		return "board/free_board_list";
	}
	
	@GetMapping("/qnaBoard")
	public String qnaBoardList() {
		
		return "board/qna_board_list";
	}
}
