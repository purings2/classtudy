package com.edu.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.common.domain.NotiDTO;
import com.edu.common.service.NotiService;
import com.edu.member.domain.MemberDTO;
import com.edu.member.domain.PointDTO;
import com.edu.member.service.MemberService;
import com.edu.member.service.PointService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/point/*") // PointController에서 공통적으로 사용될 url mapping
public class PointController {
	
	// 로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(PointController.class);
	
	@Inject
	PointService pointService;
	
	@Inject
	MemberService memberService;
	
	@Inject
	NotiService notiService;
	
	// 포인트 지급
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	private int addNewPoint(String pointContent, String member, int changeVal) throws Exception {
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
			return pointService.addPoint(pointDTO);
		}
	}
	
	// 회원등급 산정
	@ResponseBody
	@RequestMapping(value="/setGrade", method=RequestMethod.POST)
	private int setGrade(HttpSession session, HttpServletRequest req, int workDay) throws Exception {
		logger.info("PointController setGrade()....");
		if(session.getAttribute("member") != null) {
			// 세션에 있는 MemberDTO와 memberId를 저장한다.
			MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
			String memberId = memberDTO.getMemberId();
			// 평일수와 총 포인트를 가지고 등급을 산정한다.
			int memberGrade = 9;
			// 전체 포인트를 가입일 이후의 평일수로 나누기
			int memberAvgPoint = workDay == 0 ? 0 : memberService.getMyPointSum(memberId) / workDay;
			// 평균 포인트를 기준으로 등급 선정
			if(memberAvgPoint > 40) {
				memberGrade = 1;
			} else if(memberAvgPoint > 35) {
				memberGrade = 2;
			} else if(memberAvgPoint > 30) {
				memberGrade = 3;
			} else if(memberAvgPoint > 25) {
				memberGrade = 4;
			} else if(memberAvgPoint > 20) {
				memberGrade = 5;
			} else if(memberAvgPoint > 15) {
				memberGrade = 6;
			} else if(memberAvgPoint > 10) {
				memberGrade = 7;
			} else if(memberAvgPoint > 5) {
				memberGrade = 8;
			} else {
				memberGrade = 9;
			}
			// 기존과 등급에 변화가 있다면 등급을 바꿔준다.
			if (memberGrade != memberDTO.getGrade()) {
				logger.info("PointController setGrade() 바꿀 등급: " + memberGrade);
				pointService.setMemberGrade(memberId, memberGrade);
				// 변경된 등급으로 세션 재발급을 위해 우선 세션을 제거한다.
				session.invalidate();
				// 이후 변경된 grade값이 들어간 세션을 다시 발급해준다.
				session = req.getSession();
				MemberDTO login = memberService.login(memberDTO);
				session.setAttribute("member", login);
				// 등급 변경 내역을 알림으로 발송한다.
				NotiDTO notiDTO = new NotiDTO();
				String notiContent = "";
				notiContent += memberGrade + "등급";
				notiContent += "<img src='/static/img/icon/level_" + memberGrade + ".png' width='20' height='20'>";
				notiContent += " 이 되었습니다.";
				notiDTO.setContent(notiContent);
				notiDTO.setReceiver(memberId);
				notiDTO.setChecked(false);
				notiService.notiInsert(notiDTO);
				return 1;
			}
		}
		return -1;
	}
	
}