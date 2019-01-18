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
	
	public EarlybudUser(String username, String password, 
			Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	public EarlybudUser(Member member) {
		super(member.getUserid(), member.getUserpw(), 
				member.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
		this.member = member;
	}
	
}
	
