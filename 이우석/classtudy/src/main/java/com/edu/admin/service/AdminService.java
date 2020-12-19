package com.edu.admin.service;

import java.util.List;

import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import com.edu.admin.domain.AcademyDTO;
import com.edu.admin.domain.AdminDTO;
import com.edu.admin.domain.LectureDTO;
import com.edu.admin.domain.RegisterlistDTO;
import com.edu.admin.mapper.AdminMapper;
import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.member.domain.MemberDTO;

@Service("com.edu.admin.service.AdminService")
public class AdminService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(AdminService.class);
	
	@Resource(name="com.edu.admin.mapper.AdminMapper")
	AdminMapper adminMapper;
	
	// 로그인
	public AdminDTO login(AdminDTO adminDTO) throws Exception {
		logger.info("AdminService login().....");
		return adminMapper.login(adminDTO);
	}
	//----------------------------------------------------------------
	// 회원 관리
	//----------------------------------------------------------------
	// 전체 회원 명수 추출
	public int getMemberListCountAll() throws Exception {
		return adminMapper.getMemberListCountAll();
	}
	// 전체 회원 목록 - 페이징
	public List<MemberDTO> memberListAll(int startNo, int numOfPage) throws Exception {
		return adminMapper.memberListAll(startNo, numOfPage);
	}
	// 회원 검색 개수 추출 - 이름+아이디
	public int getSearchMemberAllCount(String keyword) throws Exception {
		return adminMapper.getSearchMemberAllCount(keyword);
	}
	// 회원 검색 개수 추출 - 이름
	public int getSearchMemberNameCount(String keyword) throws Exception {
		return adminMapper.getSearchMemberNameCount(keyword);
	}
	// 회원 검색 개수 추출 - 아이디
	public int getSearchMemberIdCount(String keyword) throws Exception {
		return adminMapper.getSearchMemberIdCount(keyword);
	}
	// 회원 검색 - 이름+아이디
	public List<MemberDTO> searchMemberAll(String keyword, int startNo, int numOfPage) throws Exception {
		return adminMapper.searchMemberAll(keyword, startNo, numOfPage);
	}
	// 회원 검색 - 이름
	public List<MemberDTO> searchMemberName(String keyword, int startNo, int numOfPage) throws Exception {
		return adminMapper.searchMemberName(keyword, startNo, numOfPage);
	}
	// 회원 검색 - 아이디
	public List<MemberDTO> searchMemberId(String keyword, int startNo, int numOfPage) throws Exception {
		return adminMapper.searchMemberId(keyword, startNo, numOfPage);
	}
	// 회원 상세정보
	public MemberDTO memberDetail(String memberId) throws Exception {
		return adminMapper.memberDetail(memberId);
	}
	
	// 회원가입 개수 추출 - 전체
	public int getRegisterListCountAll() throws Exception {
		return adminMapper.getRegisterListCountAll();
	}
	// 회원가입 개수 추출 - 선택된 상태
	public int getRegisterListCount(boolean viewStatus) throws Exception {
		return adminMapper.getRegisterListCount(viewStatus);
	}
	// 회원가입 목록 - 전체
	public List<RegisterlistDTO> registerListAll(int startNo, int numOfPage) throws Exception {
		return adminMapper.registerListAll(startNo, numOfPage);
	}
	// 회원가입 목록 - 선택된 상태
	public List<RegisterlistDTO> registerList(boolean viewStatus, int startNo, int numOfPage) throws Exception {
		return adminMapper.registerList(viewStatus, startNo, numOfPage);
	}
	// 모든 회원가입 내역 승인
	public int registerCheckAll() throws Exception {
		// 회원가입 내역 listNo의 최댓값 구하기
		int listNoMAX = adminMapper.getRegisterListNoMAX();
		for (int i = 1; i <= listNoMAX; i++) {
			adminMapper.updateLectureNo(i); }
		return adminMapper.registerCheckAll();
	}
	// 선택한 회원가입 내역 승인
	public int registerCheck(int listNo) throws Exception {
		adminMapper.updateLectureNo(listNo); //강의번호를 회원정보에 반영
		return adminMapper.registerCheck(listNo);
	}
	
	//----------------------------------------------------------------
	// 강의 관리
	//----------------------------------------------------------------
	// 전체 강의 개수 추출
	public int getLectureListCountAll() throws Exception {
		return adminMapper.getLectureListCountAll();
	}
	// 선택한 학원의 강의 개수 추출
	public int getLectureListCount(int viewAcademy) throws Exception {
		return adminMapper.getLectureListCount(viewAcademy);
	}
	// 전체 강의 목록
	public List<LectureDTO> lectureListAll(int startNo, int numOfPage) throws Exception {
		return adminMapper.lectureListAll(startNo, numOfPage);
	}
	// 선택한 학원의 강의 목록
	public List<LectureDTO> lectureList(int viewAcademy, int startNo, int numOfPage) throws Exception {
		return adminMapper.lectureList(viewAcademy, startNo, numOfPage);
	}
	// 강의 검색 개수 추출 - 강의+학원이름
	public int getSearchLectureAllCount(String keyword, String viewAcademy) throws Exception {
		return adminMapper.getSearchLectureAllCount(keyword, viewAcademy);
	}
	// 강의 검색 개수 추출 - 강의이름
	public int getSearchLectureNameCount(String keyword, String viewAcademy) throws Exception {
		return adminMapper.getSearchLectureNameCount(keyword, viewAcademy);
	}
	// 강의 검색 개수 추출 - 학원이름
	public int getSearchLectureAcademyCount(String keyword, String viewAcademy) throws Exception {
		return adminMapper.getSearchLectureAcademyCount(keyword, viewAcademy);
	}
	// 강의 검색 - 강의+학원이름
	public List<MemberDTO> searchLectureAll(String keyword, String viewAcademy, int startNo, int numOfPage) throws Exception {
		return adminMapper.searchLectureAll(keyword, viewAcademy, startNo, numOfPage);
	}
	// 강의 검색 - 강의이름
	public List<MemberDTO> searchLectureName(String keyword, String viewAcademy, int startNo, int numOfPage) throws Exception {
		return adminMapper.searchLectureName(keyword, viewAcademy, startNo, numOfPage);
	}
	// 강의 검색 - 학원이름
	public List<MemberDTO> searchLectureAcademy(String keyword, String viewAcademy, int startNo, int numOfPage) throws Exception {
		return adminMapper.searchLectureAcademy(keyword, viewAcademy, startNo, numOfPage);
	}
	// 새로운 강의 등록
	public int writeLecture(LectureDTO lectureDTO) throws Exception {
		return adminMapper.writeLecture(lectureDTO);
	}
	// 선택된 강의 삭제
	public int deleteLecture(int lectureNo) throws Exception {
		return adminMapper.deleteLecture(lectureNo);
	}
	
	// 전체 학원 개수 추출
	public int getAcademyListCountAll() throws Exception {
		return adminMapper.getAcademyListCountAll();
	}
	// 전체 학원 목록
	public List<AcademyDTO> academyListAll() throws Exception {
		return adminMapper.academyListAll();
	}
	// 학원 목록 - 페이징
	public List<AcademyDTO> academyList(int startNo, int numOfPage) throws Exception {
		return adminMapper.academyList(startNo, numOfPage);
	}
	// 학원 목록 - 강의 검색(강의+학원이름)
	public List<AcademyDTO> academyListSearchLectureAll(String keyword) throws Exception {
		return adminMapper.academyListSearchLectureAll(keyword);
	}
	// 학원 목록 - 강의 검색(강의이름)
	public List<AcademyDTO> academyListSearchLectureName(String keyword) throws Exception {
		return adminMapper.academyListSearchLectureName(keyword);
	}
	// 학원 목록 - 강의 검색(학원이름)
	public List<AcademyDTO> academyListSearchLectureAcademy(String keyword) throws Exception {
		return adminMapper.academyListSearchLectureAcademy(keyword);
	}
	// 새로운 학원 등록
	public int writeAcademy(AcademyDTO academyDTO) throws Exception {
		return adminMapper.writeAcademy(academyDTO);
	}
	// 선택된 학원 삭제
	public int deleteAcademy(int academyNo) throws Exception {
		return adminMapper.deleteAcademy(academyNo);
	}
	
	//----------------------------------------------------------------
	// 게시판 관리
	//----------------------------------------------------------------
	
	//----------------------------------------------------------------
	// 통계
	//----------------------------------------------------------------
	// 성별 통계
	public int getMenCount() throws Exception {
		return adminMapper.getMenCount();
	}
	public int getWomenCount() throws Exception {
		return adminMapper.getWomenCount();
	}
	// 프리보드 게시글 카운트
	public int freeboardCount() throws Exception {
		return adminMapper.freeboardCount();
	}
	// 그룹서치 게시글 카운트
	public int groupsearchCount() throws Exception {
		return adminMapper.groupsearchCount();
	}
	// 클래스보드 게시글 카운트
	public int classboardCount() throws Exception {
		return adminMapper.classboardCount();
	}
	// 그룹보드 카운트
	public int groupboardCount() throws Exception {
		return adminMapper.groupboardCount();
	}
	
	// freeboardComment
	public int freeboardComment() throws Exception {
		return adminMapper.freeboardComment();
	}
	// groupsearchComment
	public int groupsearchComment() throws Exception {
		return adminMapper.groupsearchComment();
	}
	// classboardComment
	public int classboardComment() throws Exception {
		return adminMapper.classboardComment();
	}
	// groupboardComment
	public int groupboardComment() throws Exception {
		return adminMapper.groupboardComment();
	}
	// memberCount
	public int memberCount() throws Exception {
		return adminMapper.memberCount();
	}
	// 날짜별 카운트 
	public List<AdminDTO> getDaycount() throws Exception {		
		return adminMapper.getDaycount();
	}
	public String getMonday() throws Exception {
		return adminMapper.getMonday();
	}
	public String getTuesday() throws Exception {
		return adminMapper.getTuesday();
	}
	public String getWednesday() throws Exception {
		return adminMapper.getWednesday();
	}
	public String getThursday() throws Exception {
		return adminMapper.getThursday();
	}
	public String getFriday() throws Exception {
		return adminMapper.getFriday();
	}
	public String getSaturday() throws Exception {
		return adminMapper.getSaturday();
	}
	public String getSunday() throws Exception {
		return adminMapper.getSunday();
	}
	
}