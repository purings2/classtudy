package com.edu.common.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.common.domain.NotiDTO;
import com.edu.common.service.NotiService;
import com.edu.member.service.MemberService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/noti/*") // NotiController에서 공통적으로 사용될 url mapping
public class NotiController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(NotiController.class);
	
	@Inject
	NotiService notiService;
	
	@Inject
	MemberService memberService;
	
	// 알림 개수 읽어오기
	@ResponseBody
	@RequestMapping(value="/load", method=RequestMethod.POST)
	private int notiLoad(String memberId) throws Exception {
		logger.info("NotiController notiCheck()....");
		return notiService.notiLoad(memberId);
	}
	
	// 알림 목록 보기
	@ResponseBody
	@RequestMapping(value="/list/{memberId}", method=RequestMethod.POST)
	private List<NotiDTO> notiList(@PathVariable String memberId, Model model) throws Exception {
		logger.info("NotiController notiList()....");
		return notiService.notiList(memberId);
	}
	
	// 알림 추가
	@ResponseBody
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	private int notiInsert(String notiContent, String receiver) throws Exception {
		logger.info("NotiController notiInsert()....");
		
		// 같은 내용의 알림이 테이블에 있는지 확인
		int existNotiNo = 0;
		existNotiNo = notiService.notiSearch(notiContent, receiver);
		// 있으면 알림이 중복되지 않도록 기존의 알림은 확인 체크를 함
		if (existNotiNo > 0) {
			notiService.notiCheck(existNotiNo);
		}
		
		// 알림 객체 만들어 전달 받은 내용 입력
		NotiDTO notiDTO = new NotiDTO();
		notiDTO.setContent(notiContent);
		notiDTO.setReceiver(receiver);
		notiDTO.setChecked(false);
		
		return notiService.notiInsert(notiDTO);
	}
	
	// 알림 추가 - 클래스원 모두에게
	@RequestMapping(value="/insertClass", method=RequestMethod.POST)
	private void notiInsertClass(String notiContent, int lectureNo, String writer) throws Exception {
		logger.info("NotiController notiInsertClass()....");
		
		// 강의 번호에 해당하는 클래스원을 찾는다.
		List<String> members = memberService.getLectureMembers(lectureNo);
		
		for (String receiver : members) {
			// 같은 내용의 알림이 테이블에 있는지 확인
			int existNotiNo = 0;
			existNotiNo = notiService.notiSearch(notiContent, receiver);
			// 있으면 알림이 중복되지 않도록 기존의 알림은 확인 체크를 함
			if (existNotiNo > 0) {
				notiService.notiCheck(existNotiNo);
			}
			
			// 알림 객체 만들어 전달 받은 내용 입력
			NotiDTO notiDTO = new NotiDTO();
			notiDTO.setContent(notiContent);
			notiDTO.setReceiver(receiver);
			notiDTO.setChecked(false);
			
			// 작성자에게는 알림을 보내지 않는다.
			if( !(receiver.equals(writer)) ) {
				notiService.notiInsert(notiDTO);
			}
		}
	}
	
	// 알림 확인
	@ResponseBody
	@RequestMapping(value="/check/{notiNo}", method=RequestMethod.POST)
	private int notiCheck(@PathVariable int notiNo, Model model) throws Exception {
		return notiService.notiCheck(notiNo);
	}
	
	// 알림 모두 확인
	@ResponseBody
	@RequestMapping(value="/checkAll", method=RequestMethod.POST)
	private int notiCheckAll(String memberId) throws Exception {
		return notiService.notiCheckAll(memberId);
	}

}