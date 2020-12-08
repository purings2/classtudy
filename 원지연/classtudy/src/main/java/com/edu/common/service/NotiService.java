package com.edu.common.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

import com.edu.common.controller.NotiController;
import com.edu.common.domain.NotiDTO;
import com.edu.common.mapper.NotiMapper;

@Service("com.edu.common.service.NotiService")
public class NotiService {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(NotiService.class);
	
	@Resource(name="com.edu.common.mapper.NotiMapper")
	NotiMapper notiMapper;
	
	// 알림 개수 읽어오기
	public int notiLoad(String memberId) throws Exception {
		return notiMapper.notiLoad(memberId);
	}
	
	// 알림 목록 보기
	public List<NotiDTO> notiList(String memberId) throws Exception {
		return notiMapper.notiList(memberId);
	}
	
	// 같은 내용의 알림 찾기
	public int notiSearch(String content, String receiver) throws Exception {
		logger.info("NotiService notiSearch()....");
		return notiMapper.notiSearch(content, receiver);
	}
	
	// 알림 추가
	public int notiInsert(NotiDTO notiDTO) throws Exception {
		return notiMapper.notiInsert(notiDTO);
	}
	
	// 알림 확인
	public int notiCheck(int notiNo) throws Exception {
		return notiMapper.notiCheck(notiNo);
	}
	
	// 알림 모두 확인
	public int notiCheckAll(String memberId) throws Exception {
		return notiMapper.notiCheckAll(memberId);
	}
	
}