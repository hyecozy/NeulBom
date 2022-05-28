package com.kh.library.item.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.library.item.vo.CartVO;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	//아이템 장바구니 insert
	@ResponseBody
	@PostMapping("/insertCart")
	public void insertCart(CartVO cartVO) {
		
	}
	
	//장바구니로 이동
	@GetMapping("/cartView")
	private String cart() {
		return "/item/cart";
	}

}
