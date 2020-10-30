package com.edu.persistence;

import org.springframework.data.repository.CrudRepository;

import com.edu.domain.Member;

public interface MemberRepository extends CrudRepository<Member, String>{
	

}
