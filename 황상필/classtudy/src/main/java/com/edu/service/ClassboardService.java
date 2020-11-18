package com.edu.service;

import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import com.edu.controller.ClassboardController;
import com.edu.domain.ClassboardDTO;
import com.edu.mapper.ClassboardMapper;


@Service("com.edu.service.ClassboardService")
public class ClassboardService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(ClassboardController.class);

	@Resource(name="com.edu.mapper.ClassboardMapper")
	ClassboardMapper classboardMapper;

	public int insertClassboard(ClassboardDTO classboardDTO) {		
		LOGGER.info("ClassboardService insertClassboard().....");
		return classboardMapper.classboardInsert(classboardDTO);
	}
	
//	// 아이디 중복 검사
//	public int idCheck(MemberDTO memberDTO) throws Exception {
//		LOGGER.info("MemberService idCheck().....");
//		
//		int result = memberMapper.idCheck(memberDTO);		
//				
//		return result;
//	}	
//	
//	public int insertMember(MemberDTO memberDTO) throws Exception {
//		LOGGER.info("Service insertMember : " + memberDTO);
//		return memberMapper.memberInsert(memberDTO);
//	}	
//	
//	// 로그인
//	public MemberDTO login(MemberDTO memberDTO) throws Exception {
//		LOGGER.info("MemberService login().....");
//		return memberMapper.login(memberDTO);
//	}
//
//	// 회원 정보 수정
//	public void memberUpdate(MemberDTO memberDTO) throws Exception {
//		LOGGER.info("MemberService memberUpdate().....");
//		memberMapper.memberUpdate(memberDTO);		
//	}
//
//	public void memberDelete(MemberDTO memberDTO) throws Exception {
//		LOGGER.info("MemberService memberDelete().....");
//		memberMapper.memberDelete(memberDTO);
//		
//	}

}