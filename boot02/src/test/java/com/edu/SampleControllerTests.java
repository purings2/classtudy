package com.edu;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;


//@WebMvcTest를 사용하면 @Controller, @Component, @ControllerAdvice 등이 작성된 코드를 인식할 수 있다.

@RunWith(SpringRunner.class)
@WebMvcTest	//@SpringBootTest
public class SampleControllerTests {
	
	@Autowired
	MockMvc mock;
	
	@Test
	public void testHello() throws Exception{
		mock.perform(get("/hello")).andExpect(content().string("Hello Spring Boot"));
	}
}
