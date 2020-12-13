package com.edu.common.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.common.mapper.PointMapper;

@Service("com.edu.common.service.PointService")
public class PointService {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(PointService.class);
	
	@Resource(name="com.edu.common.mapper.PointMapper")
	PointMapper pointMapper;
	
	public int isLoginPointCheck(String memberId) throws Exception {
		return pointMapper.isLoginPointCheck(memberId);		
	}
	
	public int addLoginPoint(String memberId, String loginPointContent) throws Exception {
		return pointMapper.addLoginPoint(memberId, loginPointContent);
	}
	
	public int isTILPointCheck(String memberId) throws Exception {
		return pointMapper.isTILPointCheck(memberId);		
	}
	
	public int addTILPoint(String memberId, String TILPointContent) throws Exception {
		return pointMapper.addTILPoint(memberId, TILPointContent);
	}	
	
	
	/*
	 * // 알림 개수 읽어오기 public int notiLoad(String memberId) throws Exception { return
	 * notiMapper.notiLoad(memberId); }
	 * 
	 * // 알림 목록 보기 public List<NotiDTO> notiList(String memberId) throws Exception {
	 * return notiMapper.notiList(memberId); }
	 * 
	 * // 같은 내용의 알림 찾기 public int notiSearch(String content, String receiver) throws
	 * Exception { logger.info("NotiService notiSearch()...."); return
	 * notiMapper.notiSearch(content, receiver); }
	 * 
	 * // 알림 추가 public int notiInsert(NotiDTO notiDTO) throws Exception { return
	 * notiMapper.notiInsert(notiDTO); }
	 * 
	 * // 알림 확인 public int notiCheck(int notiNo) throws Exception { return
	 * notiMapper.notiCheck(notiNo); }
	 * 
	 * // 알림 모두 확인 public int notiCheckAll(String memberId) throws Exception {
	 * return notiMapper.notiCheckAll(memberId); }
	 */
	
}