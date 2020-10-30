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
@Entity
@Table(name = "tbl_board")
public class BoardDTO {
	
	@Id	//PK를 지정
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long	bno;
	private String	title;
	private String	writer;
	private String	content;
	
	@CreationTimestamp
	private Timestamp	regdate;	//게시글 등록일자
	@UpdateTimestamp
	private Timestamp	updatedate;	//게시글 수정일자
	
}

/*	클래스 선언부에 반드시 @Entity가 설정되어야 한다.
	@Entity
	@Entity 설정은 해당 클래스가 엔티티 클래스임을 설정한다.
	
	@Table
	@Table을 설정하는 경우에는 기본적으로 데이터베이스으 ㅣ클래스명과 동일한 이름으로 생성한다.
	만일, 다른이름으로 지정하고 싶을 때에는 @Table의 name속성을 사용한다.		
	@Id - 가장 중요한 어노테이션입니다. / 행당 컬럼이 식별키(Primary Key)라는 것을 의미한다.
	
	@GeneratedValue
	@Id는 주로 @GeneratedValue와 같이 이용해서 식별키를 어떤 전략으로 생성하는지를 명시한다.
	@GeneratedValue는 strategy 속성과 generator 속성으로 구분된다.
	strategy 속성
		AUTO : 특정 데이터베이스에 맞게 자동으로 생성되는 방식
		IDENTITY : 기본 키 생성 방식 자체를 데이터베이스에게 위임하는 방식.
			데이터베이스에 의존하는 방식, MySQL에서 주로 많이 사용한다.
		SEQUENCE : 데이터베이스에서 시퀀스를 이용해서 식별키를 생성한다.(Oracle)
		TABLE : 별도의 키를 생성해주는 채번 테이블(번호를 취할 목적으로 만든 테이블)을 이용하는 방식
	 generator 속성 : @TableGenerator, @SequenceGenerator
	 
	  */