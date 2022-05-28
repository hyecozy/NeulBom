package com.kh.library.item.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.library.item.service.SalesService;
import com.kh.library.item.vo.OrderSheetVO;

@Controller
@RequestMapping("/sales")
public class SalesController {

	@Resource(name = "salesService")
	private SalesService salesService;
	
	@GetMapping("/orderStateManage")
	public String orderStateManage(Model model) {
		model.addAttribute("salesList",salesService.selectOrderAll());
		return "item/order_state_update";
	}
	
	@PostMapping("/updateItemState")
	public String updateItemState(OrderSheetVO orderSheetVO) {
		salesService.updateItemState(orderSheetVO);
		return "redirect:/sales/orderStateManage";
	}
}
