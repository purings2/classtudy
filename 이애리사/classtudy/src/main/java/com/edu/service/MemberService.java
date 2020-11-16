package com.edu.service;

import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import com.edu.controller.MemberController;
import com.edu.domain.MemberDTO;
import com.edu.mapper.MemberMapper;

@Service("com.edu.service.MemberService")
public class MemberService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MemberController.class);

	@Resource(name="com.edu.mapper.MemberMapper")
	MemberMapper memberMapper;
	
	// 아이디 중복 검사
	public int idCheck(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService idCheck().....");
		
		int result = memberMapper.idCheck(memberDTO);		
				
		return result;
	}	
	
	public int insertMember(MemberDTO memberDTO) throws Exception {
		LOGGER.info("Service insertMember : " + memberDTO);
		return memberMapper.memberInsert(memberDTO);
	}	
	
	// 로그인
	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService login().....");
		return memberMapper.login(memberDTO);
	}

	// 회원 정보 수정
	public void memberUpdate(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService memberUpdate().....");
		memberMapper.memberUpdate(memberDTO);		
	}

	public void memberDelete(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService memberDelete().....");
		memberMapper.memberDelete(memberDTO);
		
	}

}