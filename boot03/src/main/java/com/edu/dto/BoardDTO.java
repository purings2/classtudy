package com.edu.dto;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity //클래스 선언부에 반드시 @Entity가 설정되어야 한다.
@Table(name="tbl_board")
public class BoardDTO {

	@Id // PK를 지정
	@GeneratedValue(strategy = GenerationType.AUTO)
	private	Long		bno;
	private	String		title;
	private	String		writer;
	private	String		content;
	
	@CreationTimestamp
	private	Timestamp	regdate;	//게시글 등록일자
	@UpdateTimestamp
	private	Timestamp	updatedate;	//게시글 수정일자
	
}