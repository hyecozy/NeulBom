package com.kh.library.club.service;

import java.util.List;

import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.MemberVO;

public interface ClubAdminService {
	//모임 신청회원 조회
	List<ClubApplyVO> selectClubApplyList(ClubApplyVO clubApplyVO);
	
	//모임 수락
	void updateClubAcceptance(ClubApplyVO clubApplyVO);
	void deleteApplyList(ClubApplyVO clubApplyVO);
	void updateAndDeleteClubAcceptance(ClubApplyVO clubApplyVO);
	
	//클럽멤버리스트 조회
	List<MemberVO> selectClubMemberList(MemberVO memberVO);
	
	//모임 강퇴
	void clubMemberKick(MemberVO memberVO);
	
	
}
