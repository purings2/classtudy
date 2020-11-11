package com.edu;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.edu"})
@MapperScan(value = {"com.edu.member.mapper"})
public class ClasstudyExamApplication {

	public static void main(String[] args) {
		SpringApplication.run(ClasstudyExamApplication.class, args);
	}

}
