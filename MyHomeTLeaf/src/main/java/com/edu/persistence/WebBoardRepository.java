package com.edu.persistence;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.repository.CrudRepository;
import com.edu.domain.QWebBoard;
import com.edu.domain.WebBoard;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;

// QuerydslPredicateExecutor<WebBoard>
// 검색 기능을 구현할 때 사용할 수 있도록 WebBoardRepository에 Querydsl 관련 인터페이스를 추가한다.
public interface WebBoardRepository extends CrudRepository<WebBoard, Long>, QuerydslPredicateExecutor<WebBoard>{

	public default Predicate makePredicate(String type, String keyword){
		
		BooleanBuilder builder = new BooleanBuilder();
		
		QWebBoard board = QWebBoard.webBoard;
		
		builder.and(board.bno.gt(0));
		
		if(type == null) {
			return builder;
		}
		
		// 검색 조건을 선택하여 검색한다.
		switch(type) {
			case "t":
				builder.and(board.title.like("%" + keyword +"%"));
				break;
			case "c":
				builder.and(board.content.like("%" + keyword +"%"));
				break;
			case "w":
				builder.and(board.writer.like("%" + keyword +"%"));
				break;
		}
		
		return builder;
	}
	

}





