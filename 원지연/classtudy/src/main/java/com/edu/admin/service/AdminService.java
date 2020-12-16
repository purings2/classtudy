package com.edu.admin.service;

import java.util.List;

import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import com.edu.admin.domain.AdminDTO;
import com.edu.admin.domain.RegisterlistDTO;
import com.edu.admin.mapper.AdminMapper;

@Service("com.edu.admin.service.AdminService")
public class AdminService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(AdminService.class);
	
	@Resource(name="com.edu.admin.mapper.AdminMapper")
	AdminMapper adminMapper;
	
	// 로그인
	public AdminDTO login(AdminDTO adminDTO) throws Exception {
		logger.info("AdminService login().....");
		return adminMapper.login(adminDTO);
	}
	//----------------------------------------------------------------
	// 회원 관리
	//----------------------------------------------------------------
	// 회원가입 개수 추출 - 전체
	public int getRegisterListCountAll() throws Exception {
		return adminMapper.getRegisterListCountAll();
	}
	// 회원가입 개수 추출 - 선택된 상태
	public int getRegisterListCount(boolean viewStatus) throws Exception {
		return adminMapper.getRegisterListCount(viewStatus);
	}
	// 회원가입 목록 - 전체
	public List<RegisterlistDTO> registerListAll(int startNo, int numOfPage) throws Exception {
		return adminMapper.registerListAll(startNo, numOfPage);
	}
	// 회원가입 목록 - 선택된 상태
	public List<RegisterlistDTO> registerList(boolean viewStatus, int startNo, int numOfPage) throws Exception {
		return adminMapper.registerList(viewStatus, startNo, numOfPage);
	}
	// 모든 회원가입 내역 승인
	public int registerCheckAll() throws Exception {
		int numOfListNo = adminMapper.getRegisterListCountAll();
		for (int i = 1; i <= numOfListNo; i++) {
			adminMapper.updateLectureNo(i); }
		return adminMapper.registerCheckAll();
	}
	// 선택한 회원가입 내역 승인
	public int registerCheck(int listNo) throws Exception {
		adminMapper.updateLectureNo(listNo); //강의번호를 회원정보에 반영
		return adminMapper.registerCheck(listNo);
	}
	
	//----------------------------------------------------------------
	// 강의 관리
	//----------------------------------------------------------------
	
	//----------------------------------------------------------------
	// 게시판 관리
	//----------------------------------------------------------------
	
	//----------------------------------------------------------------
	// 통계
	//----------------------------------------------------------------
	// 성별 통계
	public int getMenCount() throws Exception {
		// TODO Auto-generated method stub
		return adminMapper.getMenCount();
	}
	public int getWomenCount() throws Exception {
		// TODO Auto-generated method stub
		return adminMapper.getWomenCount();
	}
	
}