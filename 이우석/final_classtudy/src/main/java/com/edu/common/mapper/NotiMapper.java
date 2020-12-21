package com.edu.common.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.common.domain.NotiDTO;

@Repository("com.edu.common.mapper.NotiMapper")
public interface NotiMapper {
	
	// 알림 개수 읽어오기
	public int notiLoad(String memberId) throws Exception;
	
	// 알림 목록 보기
	public List<NotiDTO> notiList(String memberId) throws Exception;
	
	// 같은 내용의 알림 찾기
	public int notiSearch(String content, String receiver) throws Exception; 
	
	// 알림 추가
	public int notiInsert(NotiDTO notiDTO) throws Exception;
	
	// 알림 확인
	public int notiCheck(int notiNo) throws Exception;
	
	// 알림 모두 확인
	public int notiCheckAll(String memberId) throws Exception;
	
}