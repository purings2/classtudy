package com.edu.persistence;

import org.springframework.data.repository.CrudRepository;

import com.edu.domain.Profile;

public interface ProfileRepository extends CrudRepository<Profile, String>{

}
