package com.edu;

import java.util.stream.Stream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.edu.dto.BoardDTO;
import com.edu.persistence.BoardRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BoardRepositoryTests {
	
	@Autowired
	private BoardRepository boardRepo;
	
	@Test
	public void inspect() {
		Class<?> clz = boardRepo.getClass();

		//실제 객체의 클래스 이름
		System.out.println(clz.getName());
		
		//클래스가 구현하고 있는 인테페이스 목록
		Class<?>[] interfaces = clz.getInterfaces();
		Stream.of(interfaces).forEach(inter -> System.out.println(inter.getName()));
		
		//클래스의 부모 클래스
		Class<?> superClasses = clz.getSuperclass();
		System.out.println(superClasses.getName());
	}
	
	@Test
	public void testInsert() {
		BoardDTO	boardDTO = new BoardDTO();
		boardDTO.setTitle("게시물 제목");
		boardDTO.setContent("게시물 내용 넣기.....");
		boardDTO.setWriter("user00");
		
		boardRepo.save(boardDTO);
	}
	@Test
	public void testRead() {
		BoardDTO boardDTO = boardRepo.findById(1L).orElse(null);
		System.out.println(boardDTO);
	}
	@Test
	public void testUpdate() {
		BoardDTO boardDTO = boardRepo.findById(1L).orElse(null);
		boardDTO.setTitle("제목을 수정하였습니다.");
		boardRepo.save(boardDTO);
	}
	@Test
	public void testDelete() {		
		boardRepo.deleteById(1L);
	}
	
	
	
	
	
	
	
	
} // End - public class BoardRepositoryTests
