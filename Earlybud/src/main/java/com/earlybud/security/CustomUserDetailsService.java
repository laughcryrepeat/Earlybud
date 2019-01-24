package com.earlybud.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.earlybud.member.dao.MemberDAO;
import com.earlybud.model.Member;
import com.earlybud.security.model.EarlybudUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	/* (non-Javadoc)
	 * @see org.springframework.security.core.userdetails.UserDetailsService#loadUserByUsername(java.lang.String)
	 */
	@Setter(onMethod_ = { @Autowired })
	private MemberDAO dao;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		log.warn("Load User By UserName : "+email); //userName == userid
		
		Member member = dao.read(email);
		
		log.warn("queried by member mapper: "+member);
		
		return member == null? null: new EarlybudUser(member);
	}

}
