  package com.edu;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

/*
 * @SpringBootApplication
 *  = @Configuration + @EnableAutoConfiguration + @ComponentScan
 * @Configuration : 현재 클래스가 스프링의 설정 파일임을 Spring Context에게 알려주는 어노테이션
 * @EnableAutoConfiguration : 스프링 부트 클래스, 패스, 세팅 및 다양한 Bean 추가 등을 시켜주는 어노테이션
 * @ComponentScan : 다른 컴포너트, 서비스, 설정 등을 찾을 수 있게 도와주는 어노테이션
 *                  
 * @MapperScan : Mapper 인터페이스를 인식할 수 있도록 설정한다.
 *   value={"com.edu.sboard.mapper"} 값에 파일이름은 포함시키지 않는다.
 */

@SpringBootApplication(scanBasePackages = {"com.edu"})
@MapperScan(value = {"com.edu.common.mapper", "com.edu.member.mapper", "com.edu.classboard.mapper", "com.edu.freeboard.mapper", "com.edu.groupboard.mapper", "com.edu.admin.mapper","com.edu.groupsearch.mapper"})
public class ClasstudyApplication {

	public static void main(String[] args) {
		SpringApplication.run(ClasstudyApplication.class, args);
	}
	
	/*
	 * SqlSessionFactory 설정을 한다.
	 * sqlSessionFactory(DataSource dataSource)
	 * MyBatis의 SqlSessionFactory를 반환해 준다.
	 */
	@Bean //스프링에서 필요한 객체를 생성한다.
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		//application.properties에 기술된 DataSource를 주입한다.
		sessionFactory.setDataSource(dataSource);
		return sessionFactory.getObject();
	}

}