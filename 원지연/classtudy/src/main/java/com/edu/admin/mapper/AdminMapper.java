package com.edu.admin.mapper;


import java.util.List;

import org.springframework.stereotype.*;

import com.edu.admin.domain.AdminDTO;
import com.edu.admin.domain.RegisterlistDTO;

@Repository("com.edu.admin.mapper.AdminMapper")
public interface AdminMapper {
	
	// 로그인
	public AdminDTO login(AdminDTO adminDTO) throws Exception;
	
	// 회원가입 개수 추출 - 전체
	public int getRegisterListCountAll() throws Exception;
	// 회원가입 개수 추출 - 선택된 상태
	public int getRegisterListCount(boolean viewStatus) throws Exception;
	// 회원가입 목록 - 전체
	public List<RegisterlistDTO> registerListAll(int startNo, int numOfPage) throws Exception;
	// 회원가입 목록 - 선택된 상태
	public List<RegisterlistDTO> registerList(boolean viewStatus, int startNo, int numOfPage) throws Exception;
	// 모든 회원가입 내역 승인
	public int registerCheckAll() throws Exception;
	// 선택한 회원가입 내역 승인
	public int registerCheck(int listNo) throws Exception;
	// 선택한 내역의 강의번호를 회원정보에 반영
	public int updateLectureNo(int listNo) throws Exception;
	
	// 성별 통계
	public int getWomenCount();
	public int getMenCount();
	
}