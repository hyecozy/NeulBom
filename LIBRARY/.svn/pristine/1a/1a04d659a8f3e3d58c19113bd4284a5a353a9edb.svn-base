package com.kh.library.item.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.item.vo.BuyViewVO;
import com.kh.library.item.vo.OrderSheetVO;

@Service("orderService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<BuyViewVO> paymentComplitList(OrderSheetVO orderSheetVO) {
		return sqlSession.selectList("cartMapper.checkBuyViewList", orderSheetVO);
	}

	@Override
	public OrderSheetVO buyerInfo(OrderSheetVO orderSheetVO) {
		return sqlSession.selectOne("cartMapper.selectOrder", orderSheetVO);
	}

	@Override
	public List<BuyViewVO> purchaseDetails(String memId) {
		return sqlSession.selectList("cartMapper.purchaseDetails", memId);
	}

	@Override
	public List<OrderSheetVO> selectOrderNum(String memId) {
		return sqlSession.selectList("cartMapper.selectOrderNum", memId);
	}

}
