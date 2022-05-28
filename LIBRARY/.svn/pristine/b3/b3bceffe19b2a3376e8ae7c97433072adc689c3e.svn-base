package com.kh.library.book.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.book.vo.BookCategoryVO;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.BorrowVO;
import com.kh.library.book.vo.HopeBookVO;
import com.kh.library.book.vo.RecommendImgVO;
import com.kh.library.book.vo.RecommendVO;
import com.kh.library.book.vo.ReserveVO;

@Service("bookService")
public class BookServiceImpl implements BookService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<BookCategoryVO> selectBookCategory(){
		return sqlSession.selectList("bookMapper.selectBookCategory");
	}
	
	//책 전체 조회
	@Override
	public List<BookVO> selectBookList() {
		return sqlSession.selectList("bookMapper.selectBookList");
	}
	
	//도서 검색결과 조회
	@Override
	public List<BookVO> selectSearchList(BookVO bookVO){
		return sqlSession.selectList("bookMapper.selectSearchList",bookVO);
	}
	
	//도서 상세보기
	@Override
	public BookVO selectBookDetail(BookVO bookVO) {
		return sqlSession.selectOne("bookMapper.selectBookDetail", bookVO);
	}
	
	//도서 추천
	@Override
	public void updateRcdCnt(BookVO bookVO) {
		sqlSession.update("bookMapper.updateRcdCnt",bookVO);
	}
	
	//도서 예약
	@Override
	public void reserve(BookVO bookVO) {
		sqlSession.insert("bookMapper.insertReserve", bookVO);
		sqlSession.update("bookMapper.updateStatus",bookVO);
	}
	
	// 유저 예약 도서 조회
	@Override
	public List<ReserveVO> selectRsvUser(ReserveVO reserveVO) {
		return sqlSession.selectList("bookMapper.selectRsvUser",reserveVO);
	}
	
	//유저 대여 목록 조회
	@Override
	public List<BorrowVO> selectBrUser(BorrowVO borrowVO){
		return sqlSession.selectList("bookMapper.selectBrUser",borrowVO);
	}
	
	
	//희망도서 신청
	@Override
	public void insertHopeBook(HopeBookVO hbVO) {
		sqlSession.insert("bookMapper.insertHopeBook", hbVO);
	}

	


}
