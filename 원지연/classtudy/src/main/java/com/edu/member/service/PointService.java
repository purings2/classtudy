package com.edu.member.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.member.domain.PointDTO;
import com.edu.member.mapper.PointMapper;

@Service("com.edu.member.service.PointService")
public class PointService {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(PointService.class);
	
	@Resource(name="com.edu.member.mapper.PointMapper")
	PointMapper pointMapper;
	
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
	
}