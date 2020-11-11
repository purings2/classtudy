package com.edu.member.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.member.controller.MemberController;
import com.edu.member.domain.MemberDTO;
import com.edu.member.mapper.MemberMapper;

@Service("com.edu.member.service.MemberService")
public class MemberService {

	// 로깅을 위한 변수 Logger를 선언한다.
	private static final Logger logger
		= LoggerFactory.getLogger(MemberController.class);

	@Resource(name="com.edu.member.mapper.MemberMapper")
	MemberMapper memberMapper;
	
	// 아이디 중복 검사
	public int idCheck(MemberDTO memberDTO) throws Exception {
		logger.info("MemberService idCheck()....");		
		int  result = memberMapper.idCheck(memberDTO);
		return result;		
	}
	
	// 회원 가입
	public int insertMember(MemberDTO memberDTO) throws Exception {
		logger.info("Service insertMember : " + memberDTO);
		return memberMapper.memberInsert(memberDTO);		
	}
	
	// 로그인
	public MemberDTO login(MemberDTO memberDTO) throws Exception  {		
		logger.info("MemberService login()....");
		return memberMapper.login(memberDTO);
	}
	
	// 회원정보 수정
	public void memberUpdate(MemberDTO memberDTO) throws Exception  {
		logger.info("MemberService memberUpdate()....");
		memberMapper.memberUpdatd(memberDTO);
	}

	// 회원 탈퇴
	public void memberDelete(MemberDTO memberDTO) throws Exception {
		logger.info("MemberService memberDelete()....");
		memberMapper.memberDelete(memberDTO);
	}
}
