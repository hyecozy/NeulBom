package com.kh.library.club.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.library.club.service.ClubAdminService;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.MemberVO;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/clubAdmin")
public class ClubAdminController {
	@Resource(name = "clubAdminService")
	private ClubAdminService clubAdminService;

	//클럽관리
	@GetMapping("/clubAdmin")
	public String clubAdmin(ClubApplyVO clubApplyVO, Model model, MemberVO memberVO) {
		model.addAttribute("clubMemList", clubAdminService.selectClubMemberList(memberVO));
		model.addAttribute("applyList", clubAdminService.selectClubApplyList(clubApplyVO));
		return "club/club_manage";
	}
	
	@ResponseBody
	@PostMapping("/clubJoinAcceptance")
	public void clubJoinAcceptance(ClubApplyVO clubApplyVO, HttpSession session) {
		clubAdminService.updateAndDeleteClubAcceptance(clubApplyVO);
		
	}
	
	//거절
	@ResponseBody
	@PostMapping("/clubJoinRejection")
	public void clubJoinRejection(ClubApplyVO clubApplyVO) {
		clubAdminService.deleteApplyList(clubApplyVO);
	}
	
	//모임강퇴
	@ResponseBody
	@PostMapping("/clubMemKick")
	public void clubMemKick(MemberVO memberVO) {
		clubAdminService.clubMemberKick(memberVO);
	}
	
}
