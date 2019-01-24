package com.earlybud.security.model;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.earlybud.model.Member;

import lombok.Getter;

@Getter
public class EarlybudUser extends User {

	private static final long serialVersionUID = 1L;
	
	private Member member;
	
	public EarlybudUser(String email, String password, 
			Collection<? extends GrantedAuthority> authorities) {
		super(email, password, authorities);
	}
	public EarlybudUser(Member member) {
		super(member.getEmail(), member.getPwd(), 
				member.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuthority())).collect(Collectors.toList()));
		this.member = member;
	}
	
}
	
