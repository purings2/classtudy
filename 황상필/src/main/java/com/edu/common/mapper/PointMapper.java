package com.edu.common.mapper;

import org.springframework.stereotype.Repository;

@Repository("com.edu.common.mapper.PointMapper")
public interface PointMapper {
	
	// login에 따른 포인트 부여가 있는지 조회하기
	public int isLoginPointCheck(String memberId) throws Exception;
	
	// login에 따른 포인트 부여하기
	public int addLoginPoint(String memberId, String loginPointContent) throws Exception;
	
	// TIL 작성에 따른 포인트 부여가 있는지 조회하기
	public int isTILPointCheck(String memberId) throws Exception;
		
	// login에 따른 포인트 부여하기
	public int addTILPoint(String memberId, String TILPointContent) throws Exception;
	
}