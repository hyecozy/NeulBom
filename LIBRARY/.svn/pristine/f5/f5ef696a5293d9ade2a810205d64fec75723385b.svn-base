package com.kh.library.item.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.library.item.service.SalesService;
import com.kh.library.item.vo.OrderSheetVO;


@Controller
@RequestMapping("/sales")
public class SalesController {

	@Resource(name = "salesService")
	private SalesService salesService;
	
	//주문내역페이지로 이동
	@GetMapping("/orderStateManage")
	public String orderStateManage(Model model) {
		model.addAttribute("salesList",salesService.selectOrderAll());
		return "item/order_state_update";
	}
	
	//주문내역 배송상태 건별 변경
	@PostMapping("/updateItemState")
	public String updateItemState(OrderSheetVO orderSheetVO) {
		salesService.updateItemState(orderSheetVO);
		return "redirect:/sales/orderStateManage";
	}
	
	//주문내역 배송상태 선택 변경
	@ResponseBody
	@PostMapping("/updateItemsStates")
	public void updateItemsStates(OrderSheetVO orderSheetVO) {
		salesService.updateItemsStates(orderSheetVO);
	}

	//주문내역 선택 삭제
	@GetMapping("/deleteOrders")
	public String deleteOrders(OrderSheetVO orderSheetVO) {
		salesService.deleteOrders(orderSheetVO);
		return "redirect:/sales/orderStateManage";
	}
	
	//주문내역 배송상태별 조회
	@GetMapping("/searchKindState")
	public String searchKindState(OrderSheetVO orderSheetVO, Model model) {
		model.addAttribute("salesList",salesService.searchKindState(orderSheetVO));
		return "item/order_state_update";		
	}
	
	//주문내역 기간조회
	@PostMapping("/searchStatePeriod")
	public String searchStatePeriod(Model model, OrderSheetVO orderSheetVO) {
		model.addAttribute("salesList",salesService.searchStatePeriod(orderSheetVO));
		return "item/order_state_update";		
	}
	
	//주문내역 조건검색
	@PostMapping("/searchOrderState")
	public String searchOrderState(Model model, OrderSheetVO orderSheetVO) {
		model.addAttribute("salesList",salesService.searchOrderState(orderSheetVO));
		return "item/order_state_update";		
	}
	
	//매출현황페이지이동
	@GetMapping("/salesStatus")
	public String salesStatus() {
		
		return "item/sales_status";
	}
	
	//일별매출
	
	//주별매출
	
	//월별매출
	
	//년별매출
	
}