package com.kh.library.book.service;

import com.kh.library.book.vo.RecommendImgVO;
import com.kh.library.book.vo.RecommendVO;
import com.kh.library.book.vo.ReserveVO;

import java.util.List;

import com.kh.library.book.vo.BookImgVO;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.HopeBookApplyVO;
import com.kh.library.book.vo.HopeBookVO;

public interface BookAdminService {

	//책 등록
	void insertBook(BookVO bookVO,BookImgVO bookImgVO );
	
	//책 이미지 정보 등록
	void insertBookImg(BookImgVO bookImgVO);
	
	//다음 이미지 코드 조회
	int selectNextBookImgCode();
	
	//다음 도서 코드 조회
	String selectNextBookCode();
	
	//추천도서 랭킹 
	List<BookVO> selectRcdBook();
	
	//신간도서 select
	List<BookVO> selectNewBook();
	
	
	//책 대여
	void insertReserve(ReserveVO reserveVO);
	
	//희망도서신청리스트조회
	List<HopeBookVO> selectHopeBookList();
	
	//희망도서신청수락
	void insertHopeBookApply(HopeBookApplyVO hopeBookApply);
	
	//추천도서 글 등록
	void regRecommend(RecommendVO rcVO, RecommendImgVO rcImgVO);
}
