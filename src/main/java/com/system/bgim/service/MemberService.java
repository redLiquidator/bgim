package com.system.bgim.service;


import lombok.AllArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.system.bgim.domain.Role;
import com.system.bgim.domain.repository.MemberEntity;
import com.system.bgim.domain.repository.MemberRepository;
import com.system.bgim.dto.MemberDTO;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class MemberService {
	
	private MemberRepository memberRepository;
	
	 @Transactional
	    public Long joinUser(MemberDTO memberDTO) {
	        // 비밀번호 암호화
	        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	        memberDTO.setPassword(passwordEncoder.encode(memberDTO.getPassword()));

	        return memberRepository.save(memberDTO.toEntity()).getId();
	    }
	 
	 @Override
	    public UserDetails loadUserByUsername(String userEmail) throws UsernameNotFoundException {

		    Optional<MemberEntity> userEntityWrapper = memberRepository.findByEmail(userEmail);
	        MemberEntity userEntity = userEntityWrapper.get();

	        List<GrantedAuthority> authorities = new ArrayList<>();

	        if (("admin@example.com").equals(userEmail)) {
	            authorities.add(new SimpleGrantedAuthority(Role.ADMIN.getValue()));
	        } else {
	            authorities.add(new SimpleGrantedAuthority(Role.MEMBER.getValue()));
	        }

	        return new User(userEntity.getEmail(), userEntity.getPassword(), authorities);
	    }

}
