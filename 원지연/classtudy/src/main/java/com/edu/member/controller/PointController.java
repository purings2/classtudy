package com.edu.member.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.member.domain.PointDTO;
import com.edu.member.service.PointService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/point/*") // PointController에서 공통적으로 사용될 url mapping
public class PointController {
	
	// 로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(PointController.class);
	
	@Inject
	PointService pointService;
	
	// 포인트 지급
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	private int addNewPoint(String pointContent, String member, int changeVal, int workDay) throws Exception {
		logger.info("PointController addNewPoint()....");
		// 포인트 객체 만들어 전달 받은 내용 입력
		PointDTO pointDTO = new PointDTO();
		pointDTO.setContent(pointContent);
		pointDTO.setMember(member);
		pointDTO.setChangeVal(changeVal);
		// 중복된 포인트 지급 내역이 있는지 확인하기 위해 내용을 담아 서비스에 의뢰한다.
		int numOfSearchPointContent = pointService.getNumOfSearchPointContent(pointDTO);
		// 같은 내용의 포인트 지급 내역이 있으면 포인트를 지급하지 않는다.
		if (numOfSearchPointContent > 0) {
			return -1;
		} else { // 결과값이 없을 경우 포인트를 지급한다.
			pointService.addPoint(pointDTO);
			//포인트에 변화가 있으므로 등급을 새로 산정한다.
			return pointService.setMemberGrade(member, workDay);
		}
	}
	
}