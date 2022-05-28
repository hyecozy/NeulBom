package com.kh.library.item.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("buyService")
public class BuyServiceImpl implements BuyService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectNextBuyNum() {
		return sqlSession.selectOne("cartMapper.selectNextBuyNum");
	}
	
	/*
	 * @Override
	 * 
	 * @Transactional(rollbackFor = Exception.class) public void insertBuys(BuyVO
	 * buyVO, CartVO cartVO) { sqlSession.insert("buyMapper.insertBuys", buyVO);
	 * sqlSession.delete("cartMapper.deleteCarts", cartVO); }
	 */

}
