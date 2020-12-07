package com.edu.admin.service;

import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import com.edu.admin.cotroller.AdminController;
import com.edu.admin.domain.AdminDTO;
import com.edu.admin.mapper.AdminMapper;

@Service("com.edu.admin.service.AdminService")
public class AdminService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(AdminController.class);

	@Resource(name="com.edu.admin.mapper.AdminMapper")
	AdminMapper adminMapper;
	
	// 아이디 중복 검사
	public int idCheck(AdminDTO adminDTO) throws Exception {
		LOGGER.info("AdminService idCheck().....");
		
		int result = adminMapper.idCheck(adminDTO);		
				
		return result;
	}	
	
	public int insertAdmin(AdminDTO adminDTO) throws Exception {
		LOGGER.info("Service insertAdmin : " + adminDTO);
		return adminMapper.adminInsert(adminDTO);
	}	
	
	// 로그인
	public AdminDTO login(AdminDTO adminDTO) throws Exception {
		LOGGER.info("AdminService login().....");
		return adminMapper.login(adminDTO);
	}

	// 회원 정보 수정
	public void adminUpdate(AdminDTO adminDTO) throws Exception {
		LOGGER.info("AdminService adminUpdate().....");
		adminMapper.adminUpdate(adminDTO);		
	}

	public void adminDelete(AdminDTO adminDTO) throws Exception {
		LOGGER.info("AdminService adminDelete().....");
		adminMapper.adminDelete(adminDTO);
		
	}

	public String getMenCount() throws Exception {
		// TODO Auto-generated method stub
		return adminMapper.getMenCount();
	}

	public String getWomenCount() throws Exception {
		// TODO Auto-generated method stub
		return adminMapper.getWomenCount();
	}


	


}