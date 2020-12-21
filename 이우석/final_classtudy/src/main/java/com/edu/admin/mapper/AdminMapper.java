package com.edu.admin.mapper;


import java.util.List;

import org.springframework.stereotype.*;

import com.edu.admin.domain.AcademyDTO;
import com.edu.admin.domain.AdminDTO;
import com.edu.admin.domain.LectureDTO;
import com.edu.admin.domain.RegisterlistDTO;
import com.edu.member.domain.MemberDTO;

@Repository("com.edu.admin.mapper.AdminMapper")
public interface AdminMapper {
	
	// 로그인
	public AdminDTO login(AdminDTO adminDTO) throws Exception;
	
	// 전체 회원 명수 추출
	public int getMemberListCountAll() throws Exception;
	// 전체 회원 목록 - 페이징
	public List<MemberDTO> memberListAll(int startNo, int numOfPage) throws Exception;
	// 회원 검색 개수 추출 - 이름+아이디
	public int getSearchMemberAllCount(String keyword) throws Exception;
	// 회원 검색 개수 추출 - 이름
	public int getSearchMemberNameCount(String keyword) throws Exception;
	// 회원 검색 개수 추출 - 아이디
	public int getSearchMemberIdCount(String keyword) throws Exception;
	// 회원 검색 - 이름+아이디
	public List<MemberDTO> searchMemberAll(String keyword, int startNo, int numOfPage) throws Exception;
	// 회원 검색 - 이름
	public List<MemberDTO> searchMemberName(String keyword, int startNo, int numOfPage) throws Exception;
	// 회원 검색 - 아이디
	public List<MemberDTO> searchMemberId(String keyword, int startNo, int numOfPage) throws Exception;
	// 회원 상세정보
	public MemberDTO memberDetail(String memberId) throws Exception;
	
	// 회원가입 개수 추출 - 전체
	public int getRegisterListCountAll() throws Exception;
	// 회원가입 개수 추출 - 선택된 상태
	public int getRegisterListCount(boolean viewStatus) throws Exception;
	// 회원가입 목록 - 전체
	public List<RegisterlistDTO> registerListAll(int startNo, int numOfPage) throws Exception;
	// 회원가입 목록 - 선택된 상태
	public List<RegisterlistDTO> registerList(boolean viewStatus, int startNo, int numOfPage) throws Exception;
	// 회원가입 내역 listNo의 최댓값
	public int getRegisterListNoMAX() throws Exception;
	// 모든 회원가입 내역 승인
	public int registerCheckAll() throws Exception;
	// 선택한 회원가입 내역 승인
	public int registerCheck(int listNo) throws Exception;
	// 선택한 내역의 강의번호를 회원정보에 반영
	public int updateLectureNo(int listNo) throws Exception;
	
	// 전체 강의 개수 추출
	public int getLectureListCountAll() throws Exception;
	// 선택한 학원의 강의 개수 추출
	public int getLectureListCount(int viewAcademy) throws Exception;
	// 전체 강의 목록
	public List<LectureDTO> lectureListAll(int startNo, int numOfPage) throws Exception;
	// 선택한 학원의 강의 목록
	public List<LectureDTO> lectureList(int viewAcademy, int startNo, int numOfPage) throws Exception;
	// 강의 검색 개수 추출 - 강의+학원이름
	public int getSearchLectureAllCount(String keyword, String viewAcademy) throws Exception;
	// 강의 검색 개수 추출 - 강의이름
	public int getSearchLectureNameCount(String keyword, String viewAcademy) throws Exception;
	// 강의 검색 개수 추출 - 학원이름
	public int getSearchLectureAcademyCount(String keyword, String viewAcademy) throws Exception;
	// 강의 검색 - 강의+학원이름
	public List<MemberDTO> searchLectureAll(String keyword, String viewAcademy, int startNo, int numOfPage) throws Exception;
	// 강의 검색 - 강의이름
	public List<MemberDTO> searchLectureName(String keyword, String viewAcademy, int startNo, int numOfPage) throws Exception;
	// 강의 검색 - 학원이름
	public List<MemberDTO> searchLectureAcademy(String keyword, String viewAcademy, int startNo, int numOfPage) throws Exception;
	// 새로운 강의 등록
	public int writeLecture(LectureDTO lectureDTO) throws Exception;
	// 선택된 강의 삭제
	public int deleteLecture(int lectureNo) throws Exception;
	
	// 전체 학원 개수 추출
	public int getAcademyListCountAll() throws Exception;
	// 전체 학원 목록
	public List<AcademyDTO> academyListAll() throws Exception;
	// 학원 목록 - 페이징
	public List<AcademyDTO> academyList(int startNo, int numOfPage) throws Exception;
	// 학원 목록 - 강의 검색(강의+학원이름)
	public List<AcademyDTO> academyListSearchLectureAll(String keyword) throws Exception;
	// 학원 목록 - 강의 검색(강의이름)
	public List<AcademyDTO> academyListSearchLectureName(String keyword) throws Exception;
	// 학원 목록 - 강의 검색(학원이름)
	public List<AcademyDTO> academyListSearchLectureAcademy(String keyword) throws Exception;
	// 새로운 학원 등록
	public int writeAcademy(AcademyDTO academyDTO) throws Exception;
	// 선택된 학원 삭제
	public int deleteAcademy(int academyNo) throws Exception;
	
	// 통계 - 성별
	public int getWomenCount()throws Exception;
	public int getMenCount()throws Exception;
	
	// 통계 - 프리보드 카운트
	public int freeboardCount() throws Exception;
	// 통계 - 그룹서치 카운트
	public int groupsearchCount() throws Exception;
	// 통계 - 클래스보드 카운트
	public int classboardCount() throws Exception;
	// 통계 - 그룹보드 카운트
	public int groupboardCount() throws Exception;
	
	// 통계 - freeboardComment
	public int freeboardComment() throws Exception;
	// 통계 - groupsearchComment
	public int groupsearchComment() throws Exception;
	// 통계 - classboardComment
	public int classboardComment() throws Exception;
	// 통계 - groupboardComment
	public int groupboardComment() throws Exception;
	
	// 통계 - memberCount
	public int memberCount() throws Exception;
	
	public String getMonday() throws Exception;
	public String getTuesday() throws Exception;
	public String getWednesday() throws Exception;
	public String getThursday() throws Exception;
	public String getFriday() throws Exception;
	public String getSaturday() throws Exception;
	public String getSunday() throws Exception;
	
	// 날짜별 카운트
	public List<AdminDTO> getDaycount() throws Exception;
	
}