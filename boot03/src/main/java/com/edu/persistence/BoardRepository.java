package com.edu.persistence;

import java.util.Collection;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.edu.dto.BoardDTO;

public interface BoardRepository extends CrudRepository<BoardDTO, Long> {

	//제목에 의한 검색
	public List<BoardDTO> findBoardDTOByTitle(String title);
	public List<BoardDTO> findBoardDTOByWriter(String title);
	
	//작성자에 대한 like % keyword % 
	public Collection<BoardDTO> findByWriterContaining(String writer);

	public Collection<BoardDTO> findByTitleContainingAndBnoGreaterThan(String title, Long bno);
	
	//Order by
	public Collection<BoardDTO> findByBnoGreaterThanOrderByBnoDesc(long bno);
	
	//페이징 처리, 정렬
	// Where bno > ? order by bno desc limit ?, ?
	public List<BoardDTO> findByBnoGreaterThanOrderByBnoDesc(Long bno, Pageable paging);
	
	//페이징 처리, Sort
	//public List<BoardDTO> findByBnoGreaterThan(Long bno, Pageable paging);
	
	public Page<BoardDTO> findByBnoGreaterThan(Long bno, Pageable paging);
	
	//@Query()
	// From 에는 Entity를 기술해야 한다.
	@Query("select b from BoardDTO b where b.title like %?1% and b.bno > 0 order by b.bno desc")
	public List<BoardDTO> findByTitle(String title);
	
//	@Query("select b.bno, b.title, b.writer, b.regdate from BoardDTO b where b.title like %?1% and b.bno > 100 order by b.no desc")
//	public List<Object[]> findByTitle3(String title);
//	
	@Query("SELECT b.bno,b.title,b.writer,b.regdate FROM BoardDTO b WHERE b.title like %?1% AND b.bno > 100 ORDER BY b.bno DESC")
	public List<Object[]> findByTitle3(String title);
	
	
	
	
	
}// End - public interface BoardRepository extends CrudRepository<BoardDTO, Long>
