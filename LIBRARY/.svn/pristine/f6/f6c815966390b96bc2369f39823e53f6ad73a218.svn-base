package com.kh.library.admin.service;

import java.util.List;

import javax.mail.Message;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.admin.vo.MessageVO;

@Service("memberAdminService")
public class MemberAdminServiceImpl implements MemberAdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<MemberAdminService> selectMemberList() {
		return sqlSession.selectList("adminMapper.selectMemberList");
	}

	@Override
	public void insertSendMessage(MessageVO messageVO) {
		sqlSession.insert("adminMapper.insertSendMessage", messageVO);
	}

}
