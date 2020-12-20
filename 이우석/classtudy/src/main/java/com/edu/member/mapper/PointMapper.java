package com.edu.member.mapper;

import org.springframework.stereotype.Repository;

import com.edu.member.domain.PointDTO;

@Repository("com.edu.member.mapper.PointMapper")
public interface PointMapper {
	
	// 오늘 중복된 포인트 지급 내역이 있는지 확인
	public int isTodayPointCheck(String memberId, String pointContent) throws Exception;
	// 중복된 포인트 지급 내역이 있는지 확인
	public int getNumOfSearchPointContent(PointDTO pointDTO) throws Exception;
	// 포인트 지급
	public int addPoint(PointDTO pointDTO) throws Exception;
	// 멤버 등급 업데이트
	public int setMemberGrade(String member, int memberGrade);
	
}