package com.kh.library.item.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.library.item.service.BuyService;
import com.kh.library.item.service.CartService;
import com.kh.library.item.vo.BuyVO;
import com.kh.library.item.vo.CartViewVO;
import com.kh.library.member.service.MemberService;
import com.kh.library.member.vo.MemberVO;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/buy")
public class BuyController {

	@Resource(name = "buyService")
	private BuyService buyService;
	
	@Resource(name = "cartService")
	private CartService cartService;
	
	@Resource(name = "memberService")
	private MemberService memberService;
	
	@ResponseBody
	@PostMapping("/insertBuy")
	public void insertBuy(String data, HttpSession session) {
		System.out.println(data);
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		
		//다음 buynum 조회
		int nextBuyNum = buyService.selectNextBuyNum();
		
		List<Map<String, String>> list = JSONArray.fromObject(data);
		String[] itemCodeArr = new String[list.size()];
		int index=0;
		List<BuyVO> buyList = new ArrayList<BuyVO>();
		BuyVO buyVO = new BuyVO();
		
		for(Map<String, String> map : list) {
			System.out.println("itemCode : " + map.get("itemCode") + " / itemCnt=" + map.get("itemCnt"));
			
			BuyVO vo = new BuyVO();
			vo.setItemCode(map.get("itemCode"));
			vo.setItemCnt(Integer.parseInt(map.get("itemCnt")));
			vo.setMemId(memId);
			vo.setBuyNum(nextBuyNum++);
			vo.setOrderNum(getNowDateTimeToString()+"_"+memId);
			
			buyList.add(vo);
			
			itemCodeArr[index++] = map.get("itemCode");
		}
		buyVO.setBuyList(buyList);
		
		//구매한 상품 장바구니에서 삭제
		
	}
	
	@GetMapping("/buyPage")
	public String buyPage(Model model, HttpSession session) {
		String memId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		
		//장바구니 목록 조회
		List<CartViewVO> carList = cartService.selectCart(memId);
		model.addAttribute("cartList", carList);
		
		//구매가격
		int totalPrice = 0;
		for(CartViewVO cart : carList) {
			totalPrice = totalPrice + cart.getTotalPrice();
		}
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("mem",memberService.selectMyPageDetail(memId));
		
		return "item/buy";
	}
	
	
	public String getNowDateTimeToString() {
		//싱글톤 패턴
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;//1~12   0~11
		int date = cal.get(Calendar.DATE);
		int hour = cal.get(Calendar.HOUR);
		int minute = cal.get(Calendar.MINUTE);
		int second = cal.get(Calendar.SECOND);
		String nowDateTime = "" + year + month + date + hour + minute + second;
		return nowDateTime;
		
	}
}
