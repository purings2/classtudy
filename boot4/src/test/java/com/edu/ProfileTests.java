package com.edu;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.junit4.SpringRunner;

import com.edu.domain.Member;
import com.edu.domain.Profile;
import com.edu.persistence.MemberRepository;
import com.edu.persistence.ProfileRepository;

import lombok.extern.java.Log;

@RunWith(SpringRunner.class)
@SpringBootTest
@Log	//Lombok의 로그를 사용할 때 추가한다.
@Commit	//테스트 결과를 데이터베이스에 commit을 하는 용도.
public class ProfileTests {
	@Autowired
	MemberRepository memberRepo;
	
	@Autowired
	ProfileRepository profileRepo;
	
	@Test
	public void restMembers() {
		//IntStream.range(1, 101).forEach(i ->{
		for(int i=1; i<101; i++) {
		Member member = new Member();
			member.setUid("user" + i);
			member.setUpw("pw" + i);
			member.setUnmae("사용자" + i);
			
			memberRepo.save(member);
		}	
		//});
	}
	@Test
	public void testProfile() {
		Member member = new Member();
		member.setUid("user1");
		
		for (int i = 1; i < 5; i++) {
			Profile profile1 = new Profile();
			profile1.setFname("face" + i + ".jpg");
			
			if (i == 1) {
				profile1.setCurrent(true);
				
				profile1.setMember(member);
				profileRepo.save(profile1);
			}
		}
	}
	

}//End - public class ProfileTests
