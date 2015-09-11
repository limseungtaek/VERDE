package com.nautestech.security.mapper;

import java.util.List;

import com.nautestech.VERDE.model.Member;
import com.nautestech.VERDE.model.MemberAuth;

public interface UserMapper {
	
	public Member getUser(String MEMBER_ID);
	public List<MemberAuth> getAuth(String MEMBER_ID);
	
}