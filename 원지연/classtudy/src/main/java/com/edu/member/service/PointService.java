package com.edu.member.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.member.domain.PointDTO;
import com.edu.member.mapper.MemberMapper;
import com.edu.member.mapper.PointMapper;

@Service("com.edu.member.service.PointService")
public class PointService {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(PointService.class);
	
	@Resource(name="com.edu.member.mapper.PointMapper")
	PointMapper pointMapper;
	
	@Resource(name="com.edu.member.mapper.MemberMapper")
	MemberMapper memberMapper;
	
	// 오늘 중복된 포인트 지급 내역이 있는지 확인
	public int isTodayPointCheck(String memberId, String pointContent) throws Exception {
		return pointMapper.isTodayPointCheck(memberId, pointContent);
	}
	// 중복된 포인트 지급 내역이 있는지 확인
	public int getNumOfSearchPointContent(PointDTO pointDTO) throws Exception {
		return pointMapper.getNumOfSearchPointContent(pointDTO);
	}
	// 포인트 지급
	public int addPoint(PointDTO pointDTO) throws Exception {
		return pointMapper.addPoint(pointDTO);
	}
	// 멤버 등급 업데이트
	public int setMemberGrade(String member, int workDay) throws Exception {
		int memberGrade = 0;
		// 전체 포인트를 가입일 이후의 평일수로 나누기
		int memberAvgPoint = memberMapper.getMyPointSum(member) / workDay;
		// 평균 포인트를 기준으로 등급 선정
		if(memberAvgPoint > 50) {
			memberGrade = 1;
		} else if(memberAvgPoint > 40) {
			memberGrade = 2;
		} else if(memberAvgPoint > 30) {
			memberGrade = 3;
		} else if(memberAvgPoint > 20) {
			memberGrade = 4;
		} else if(memberAvgPoint > 10) {
			memberGrade = 5;
		} else {
			memberGrade = -1;
		}
		return pointMapper.setMemberGrade(member, memberGrade);
	}
	
}