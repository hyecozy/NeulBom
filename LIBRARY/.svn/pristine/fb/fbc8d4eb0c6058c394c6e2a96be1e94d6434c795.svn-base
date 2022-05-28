package com.kh.library.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.library.admin.service.BookAdminService;
import com.kh.library.admin.service.ItemAdminService;
import com.kh.library.book.service.BookService;
import com.kh.library.book.vo.ReserveVO;
import com.kh.library.book.vo.BookImgVO;
import com.kh.library.book.vo.BookVO;
import com.kh.library.item.service.ItemService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	  
	   
		
	@Resource(name = "itemAdminService") 
	private ItemAdminService itemAdminService;
		  
	@Resource(name = "itemService") 
	private ItemService itemService;
		 
	@GetMapping("/test") 
	public String test() { 
		 return "manage/home"; }
		  
		 
	@Resource(name = "bookService")
	private BookService bookService;
	
	@Resource(name = "bookAdminService")
	private BookAdminService bookAdminService;
	
	//도서 예약
	@RequestMapping("/reserveBook")
	public String reserveBook(ReserveVO reserveVO) {
		return "redirect:/admin/reserveList";
	}
	
	//책 등록페이지
	@GetMapping("/regBookForm")
	public String regBookForm(Model model) {
		model.addAttribute("cateList",bookService.selectBookCategory());
		return "admin/reg_book";
	}
	
	//책 리스트 조회
	@GetMapping("/bookList")
	public String selectBookList(Model model) {
		model.addAttribute("bookList", bookService.selectBookList());
		return "book/book_list";
	}
	
	//책 상세 조회
	@GetMapping("/bookDetail")
	public String selectBookDetail(Model model, BookVO bookVO) {
		model.addAttribute("book", bookService.selectBookDetail(bookVO));
		return "book/book_detail";	
	}
	
	
	// 책 등록 
	@PostMapping("/regBook")
	public String regBook(BookVO bookVO, MultipartHttpServletRequest multi) {
		
		MultipartFile file = multi.getFile("file");
		
		if(!file.getOriginalFilename().equals("")) {
			
			//파일 첨부 경로
			String uploadPath = "D:git\\spring-study\\LIBRARY\\src\\main\\webapp\\resources\\images\\book\\";
			
			//다음에 들어갈 book코드 조회
			String nextBookCode = bookAdminService.selectNextBookCode();
			
			//다음에 들어갈 img_code조회
			int nextBookImgCode = bookAdminService.selectNextImgCode();
			
			try {
				
				//업로드할 파일명 설정
				String attachedFileName = System.currentTimeMillis()+"_"+ file.getOriginalFilename();
				//지정한 경로에 파일 첨부
				file.transferTo(new File(uploadPath+attachedFileName));
				
				String imgCode = "IMG_"+String.format("%03d", nextBookImgCode++);
				
				bookVO.setBookImgVO(new BookImgVO(imgCode,file.getOriginalFilename(),attachedFileName,nextBookCode));
				bookVO.setBookCode(nextBookCode);
			} catch(IllegalStateException e) {
				
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
		
		else {
			
			//다음에 들어갈 book코드 조회
			String nextBookCode = bookAdminService.selectNextBookCode();
			
			
			int nextBookImgCode = bookAdminService.selectNextImgCode();
			String imgCode = "IMG_"+String.format("%03d", nextBookImgCode++);
			
			bookVO.setBookImgVO(new BookImgVO(imgCode,"noneImage.jpg","noneImage.jpg",nextBookCode));
			bookVO.setBookCode(nextBookCode);
		} 
		
		int result1 = bookAdminService.insertBook(bookVO);
		int result2 = bookAdminService.insertBookImg(bookVO);
		
		if(result1==1 && result2==1) {
			System.out.println("성공");
		}
		
		return "redirect:/book/bookList";
	
	}
	
}
