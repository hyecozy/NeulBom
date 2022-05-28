package com.kh.library.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.board.vo.QnaVO;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertQna(QnaVO qnaVO) {
		sqlSession.insert("otherboardMapper.insertQna", qnaVO);
	}

	@Override
	public String selectNextQnaNum() {
		return sqlSession.selectOne("otherboardMapper.selectNextQnaNum");
	}

	@Override
	public List<QnaVO> selectQnaList() {
		return sqlSession.selectList("otherboardMapper.selectQnaList");
	}
}
