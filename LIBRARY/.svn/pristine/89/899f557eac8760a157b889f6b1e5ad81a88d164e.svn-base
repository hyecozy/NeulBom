package com.kh.library.club.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.MemberVO;

@Service("clubAdminService")
public class ClubAdminServiceImpl implements ClubAdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ClubApplyVO> selectClubApplyList(ClubApplyVO clubApplyVO) {
		return sqlSession.selectList("clubMapper.selectClubApplyList",clubApplyVO);
	}

	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void updateAndDeleteClubAcceptance(ClubApplyVO clubApplyVO) {
		sqlSession.update("clubMapper.updateClubAcceptance", clubApplyVO);
		sqlSession.delete("clubMapper.deleteApplyList", clubApplyVO);
	}


	@Override
	public void updateClubAcceptance(ClubApplyVO clubApplyVO) {
		sqlSession.update("clubMapper.updateClubAcceptance", clubApplyVO);
	}

	@Override
	public void deleteApplyList(ClubApplyVO clubApplyVO) {
		sqlSession.delete("clubMapper.deleteApplyList", clubApplyVO);
	}


	@Override
	public List<MemberVO> selectClubMemberList(MemberVO memberVO) {
		return sqlSession.selectList("clubMapper.selectClubMemberList", memberVO);
	}


	@Override
	public void clubMemberKick(MemberVO memberVO) {
		sqlSession.update("clubMapper.clubMemberKick", memberVO);
	}


}
