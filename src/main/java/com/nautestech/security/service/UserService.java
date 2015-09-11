package com.nautestech.security.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.nautestech.VERDE.model.Member;
import com.nautestech.VERDE.model.MemberAuth;
import com.nautestech.security.mapper.UserMapper;
import com.nautestech.security.model.Role;
import com.nautestech.security.model.User;

@Service
public class UserService implements UserDetailsService {
	
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
    public User loadUserByUsername(String username) throws UsernameNotFoundException {
         logger.info("search user {}",username);
         
         Member member = new Member();
         
         member = this.userMapper.getUser(username);
         User user = new User();
         user.setUsername(member.getMEMBER_ID());
         user.setPassword(member.getMEMBER_PWD());

         logger.info("login success {} ",username);
         
         List<MemberAuth> AuthList = new ArrayList<MemberAuth>();
         
         AuthList = this.userMapper.getAuth(username);
         logger.info("get login auth count {} ",AuthList.size());
         
         List<Role> roles = new ArrayList<Role>();
         for(int i=0; i<AuthList.size(); i++) {
        	 MemberAuth memberAuth = (MemberAuth)AuthList.get(i);
        	 Role role = new Role();
        	 logger.info("get login auth {} ",memberAuth.getMEMBER_AUTH());
             role.setName(memberAuth.getMEMBER_AUTH());
        	 roles.add(role);
         }
         user.setAuthorities(roles);

         return user;
    }
}
