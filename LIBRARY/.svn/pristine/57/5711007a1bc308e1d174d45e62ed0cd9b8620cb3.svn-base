package com.kh.library.admin.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.library.book.vo.RecommendImgVO;
import com.kh.library.book.vo.RecommendVO;
import com.kh.library.book.vo.ReserveVO;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.HopeBookApplyVO;
import com.kh.library.book.vo.HopeBookVO;

@Service("bookAdminService")
public class BookAdminServiceImpl implements BookAdminService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	//도서 등록
	@Override
	public int insertBook(BookVO bookVO) {
		return sqlSession.insert("bookMapper.insertBook",bookVO);
	}
	
	@Override
	public int insertBookImg(BookVO bookVO) {
		return sqlSession.insert("bookMapper.insertBookImg", bookVO);
	}
	
	//이미지코드숫자
	@Override
	public int selectNextImgCode() {
		return sqlSession.selectOne("bookMapper.selectNextImgCode");
	}

	//책 코드
	@Override
	public String selectNextBookCode() {
		return sqlSession.selectOne("bookMapper.selectNextBookCode");
	}
	
	@Override
	public void insertReserve(ReserveVO reserveVO) {
		sqlSession.insert("bookMapper.insertReserve",reserveVO);
	}
	
	@Override
	public List<HopeBookVO> selectHopeBookList(){
		return sqlSession.selectList("bookMapper.selectHopeBook");
	}
	
	@Override
	public void insertHopeBookApply(HopeBookApplyVO hopeBookApply) {
		sqlSession.insert("bookMapper.insertHopeBookApply", hopeBookApply);
	}
	
	
	@Override
	public void regRecommend(RecommendVO rcVO, RecommendImgVO rcImgVO) {
		sqlSession.insert("bookMapper.insertRecommend",rcVO);
		sqlSession.insert("bookMapper.insertRecommendImg",rcImgVO);
	}
	
}
