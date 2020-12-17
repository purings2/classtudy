package com.edu.member.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.classboard.domain.CbcommentDTO;
import com.edu.classboard.domain.ClassboardDTO;
import com.edu.freeboard.domain.FbcommentDTO;
import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.groupboard.domain.GroupboardDTO;
import com.edu.member.domain.LectureDTO;
import com.edu.member.domain.MemberDTO;
import com.edu.member.domain.PointDTO;
import com.edu.member.domain.ResumeDTO;
import com.edu.member.domain.RewardDTO;
import com.edu.member.mapper.MemberMapper;

@Service("com.edu.member.service.MemberService")
public class MemberService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MemberService.class);
	
	@Resource(name="com.edu.member.mapper.MemberMapper")
	MemberMapper memberMapper;
	
	// 아이디 중복 검사
	public int idCheck(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService idCheck().....");
		int result = memberMapper.idCheck(memberDTO);
		return result;
	}
	
	// 강의번호 검색
	public List<LectureDTO> search(String keyword) throws Exception {
		return memberMapper.search(keyword);
	}
	
	// 회원 가입
	public int insertMember(MemberDTO memberDTO) throws Exception {
		LOGGER.info("Service insertMember : " + memberDTO);
		return memberMapper.memberInsert(memberDTO);
	}	
	
	// 강의번호 확인 신청
	public void registerLecture(String memberId, int lectureNo) {
		LOGGER.info("MemberService LectureCheck().....");
		memberMapper.registerLecture(memberId, lectureNo);
	}
	
	// 로그인
	public MemberDTO login(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService login().....");
		return memberMapper.login(memberDTO);
	}

	// 회원 정보 수정
	public void memberUpdate(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService memberUpdate().....");
		memberMapper.memberUpdate(memberDTO);		
	}

	// 회원 탈퇴
	public void memberDelete(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberService memberDelete().....");
		memberMapper.memberDelete(memberDTO);
	}
	
	// 강의 번호에 해당하는 회원 찾기
	public List<String> getLectureMembers(int lectureNo) throws Exception {
		return memberMapper.getLectureMembers(lectureNo);
	}
	
	// 마이페이지 활동내역 - 출석여부 확인
	public int checkTodayStatus(String memberId, String today) throws Exception {
		return memberMapper.checkTodayStatus(memberId, today);
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 게시글(클래스게시판)
	public List<ClassboardDTO> classboardToday(String memberId, String today) throws Exception {
		return memberMapper.classboardToday(memberId, today);
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 게시글(자유게시판)
	public List<FreeboardDTO> freeboardToday(String memberId, String today) throws Exception {
		return memberMapper.freeboardToday(memberId, today);
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 게시글(그룹게시판)
	public List<GroupboardDTO> groupboardToday(String memberId, String today) throws Exception {
		return memberMapper.groupboardToday(memberId, today);
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 댓글(클래스게시판)
	public List<CbcommentDTO> classboardCommentToday(String memberId, String today) throws Exception {
		return memberMapper.classboardCommentToday(memberId, today);
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 댓글(자유게시판)
	public List<FbcommentDTO> freeboardCommentToday(String memberId, String today) throws Exception {
		return memberMapper.freeboardCommentToday(memberId, today);
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 댓글(그룹게시판)
	//public List<GbcommentDTO> groupboardCommentToday(String memberId, String today) throws Exception {
		//return memberService.groupboardCommentToday(memberId, today + "%");
	//}
	
	// 마이페이지 포인트 내역 개수 추출
	public int getPointListCount(String memberId) throws Exception {
		return memberMapper.getPointListCount(memberId);
	}
	// 마이페이지 포인트 내역 - 처음
	public List<PointDTO> pointListFirst(String memberId, int numOfList) throws Exception {
		return memberMapper.pointListFirst(memberId, numOfList);
	}
	// 마이페이지 포인트 내역 - 더보기 아래
	public List<PointDTO> pointListSecond(String memberId, int numOfList, int listCount) throws Exception {
		return memberMapper.pointListSecond(memberId, numOfList, listCount);
	}
	// 마이페이지 포인트 총 합계 추출
	public int getMyPointSum(String memberId) throws Exception {
		return memberMapper.getMyPointSum(memberId);
	}
	
	// 마이페이지 적립금 내역 개수 추출
	public int getRewardListCount(String memberId) throws Exception {
		return memberMapper.getRewardListCount(memberId);
	}
	// 마이페이지 적립금 내역 - 처음
	public List<RewardDTO> rewardListFirst(String memberId, int numOfList) throws Exception {
		return memberMapper.rewardListFirst(memberId, numOfList);
	}
	// 마이페이지 적립금 내역 - 더보기 아래
	public List<RewardDTO> rewardListSecond(String memberId, int numOfList, int listCount) throws Exception {
		return memberMapper.rewardListSecond(memberId, numOfList, listCount);
	}
	// 마이페이지 적립금 총 합계 추출
	public int getMyRewardSum(String memberId) throws Exception {
		return memberMapper.getMyRewardSum(memberId);
	}
	
	// 마이페이지 내가 쓴 글 - 클래스게시판
	public List<ClassboardDTO> classboardList(String memberId) throws Exception {
		return memberMapper.classboardList(memberId);
	}
	// 마이페이지 내가 쓴 글 - 자유게시판
	public List<FreeboardDTO> freeboardList(String memberId) throws Exception {
		return memberMapper.freeboardList(memberId);
	}
	// 마이페이지 내가 쓴 글 - 그룹게시판
	public List<GroupboardDTO> groupboardList(String memberId) throws Exception {
		return memberMapper.groupboardList(memberId);
	}

	// 이력서 작성
	public int resumeWriter(ResumeDTO resumeDTO) throws Exception {
		LOGGER.info("Service resumeWriter resumeDTO : " + resumeDTO);
		return memberMapper.resumeWriter(resumeDTO);
	}
	// 이력서 boardNo찾기
	public int selectBoardNo(String writer) throws Exception {
		LOGGER.info("Service selectBoardNo writer : " + writer);
		return memberMapper.selectBoardNo(writer);
	}
	// 이력서 보기
	public ResumeDTO resumeView(int boardNo) throws Exception {
		LOGGER.info("Service resumeView : " + boardNo);
		return memberMapper.resumeView(boardNo);
	}
	// 내가 쓴 이력서 목록
	public List<ResumeDTO> resumeList(String memberId) throws Exception {
		LOGGER.info("Service resumeList : " + memberId);
		return memberMapper.resumeList(memberId);
	}
	
}