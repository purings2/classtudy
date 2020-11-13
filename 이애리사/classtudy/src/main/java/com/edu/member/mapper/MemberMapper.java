package com.edu.member.mapper;

import org.springframework.stereotype.*;

import com.edu.member.domain.MemberDTO;

@Repository("com.edu.member.mapper.MemberMapper")
public interface MemberMapper {
	
	// 아이디 중복 체크
	public int idCheck(MemberDTO memberDTO) throws Exception;

	// 회원가입
	public int memberInsert(MemberDTO memberDTO) throws Exception;

	// 로그인
	public MemberDTO login(MemberDTO memberDTO) throws Exception;

	// 회원 정보 수정
	public void memberUpdate(MemberDTO memberDTO) throws Exception;

	// 회원탈퇴
	public void memberDelete(MemberDTO memberDTO) throws Exception;
	
}
