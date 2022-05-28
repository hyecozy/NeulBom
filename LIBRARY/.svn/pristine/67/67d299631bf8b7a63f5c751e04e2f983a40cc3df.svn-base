package com.kh.library.book.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.library.book.service.BookService;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.HopeBookVO;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Resource(name="bookService")
	private BookService bookService;
	
	@GetMapping("/list")
	public String firstList() {
		return "book/list";
	}
	
	//전체도서 목록 페이지
	@GetMapping("/bookList")
	public String bookList(Model model) {
		//도서 목록 조회
		model.addAttribute("bookList", bookService.selectBookList());
		
		return "book/book_list";
	}
	
	//도서 상세보기
	@GetMapping("/bookDetail")
	public String bookDetail(Model model, BookVO bookVO) {
		
		model.addAttribute("bookDetail", bookService.selectBookDetail(bookVO));
		
		return "book/book_detail";
	}
	
	//희망도서 신청 폼 
	@GetMapping("/hopeBookForm")
	public String hopeBookForm() {
		
		return "book/reg_hope_book";
	}
	
	//희망도서  등록
	@PostMapping("/regHopeBook")
	public String regHopeBook(Model model, HopeBookVO hbVO) {
		bookService.insertHopeBook(hbVO);
		return "book/fin_hope_book";
	}

}
