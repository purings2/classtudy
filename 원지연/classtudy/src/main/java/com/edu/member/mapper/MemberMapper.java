package com.edu.member.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.classboard.domain.ClassboardDTO;
import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.groupboard.domain.GroupboardDTO;
import com.edu.member.domain.LectureDTO;
import com.edu.member.domain.MemberDTO;
import com.edu.member.domain.PointDTO;
import com.edu.member.domain.RewardDTO;

@Repository("com.edu.member.mapper.MemberMapper")
public interface MemberMapper {
	
	// 아이디 중복 체크
	public int idCheck(MemberDTO memberDTO) throws Exception;
	
	// 강의번호 검색
	public List<LectureDTO> search(String keyword) throws Exception;
	
	// 회원가입
	public int memberInsert(MemberDTO memberDTO) throws Exception;
	
	// 강의번호 확인 신청
	public void registerLecture(String memberId, int lectureNo);
	
	// 로그인
	public MemberDTO login(MemberDTO memberDTO) throws Exception;
	
	// 회원 정보 수정
	public void memberUpdate(MemberDTO memberDTO) throws Exception;
	
	// 회원탈퇴
	public void memberDelete(MemberDTO memberDTO) throws Exception;
	
	// 강의 번호에 해당하는 회원 찾기
	public List<String> getLectureMembers(int lectureNo) throws Exception;
	
	// 마이페이지 포인트 내역 개수 추출
	public int getPointListCount(String memberId) throws Exception;
	// 마이페이지 포인트 내역 - 처음
	public List<PointDTO> pointListFirst(String memberId, int numOfList) throws Exception;
	// 마이페이지 포인트 내역 - 더보기 아래
	public List<PointDTO> pointListSecond(String memberId, int numOfList, int listCount) throws Exception;
	
	// 마이페이지 적립금 내역 개수 추출
	public int getRewardListCount(String memberId) throws Exception;
	// 마이페이지 적립금 내역 - 처음
	public List<RewardDTO> rewardListFirst(String memberId, int numOfList) throws Exception;
	// 마이페이지 적립금 내역 - 더보기 아래
	public List<RewardDTO> rewardListSecond(String memberId, int numOfList, int listCount) throws Exception;
	
	// 마이페이지 내가 쓴 글 - 클래스게시판
	public List<ClassboardDTO> classboardList(String memberId) throws Exception;
	// 마이페이지 내가 쓴 글 - 자유게시판
	public List<FreeboardDTO> freeboardList(String memberId) throws Exception;
	// 마이페이지 내가 쓴 글 - 그룹게시판
	public List<GroupboardDTO> groupboardList(String memberId) throws Exception;
	
}