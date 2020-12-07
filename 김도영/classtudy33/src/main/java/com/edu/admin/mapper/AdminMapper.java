package com.edu.admin.mapper;

import org.springframework.stereotype.*;

import com.edu.admin.domain.AdminDTO;

@Repository("com.edu.admin.mapper.AdminMapper")
public interface AdminMapper {
	
	// 아이디 중복 체크
	public int idCheck(AdminDTO adminDTO) throws Exception;

	// 회원가입
	public int adminInsert(AdminDTO adminDTO) throws Exception;

	// 로그인
	public AdminDTO login(AdminDTO adminDTO) throws Exception;

	// 회원 정보 수정
	public void adminUpdate(AdminDTO adminDTO) throws Exception;

	// 회원탈퇴
	public void adminDelete(AdminDTO adminDTO) throws Exception;

	public String getWomenCount();

	public String getMenCount();
	
}

	