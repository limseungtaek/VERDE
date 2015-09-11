package com.nautestech.VERDE.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nautestech.VERDE.mapper.MemberMapper;
import com.nautestech.VERDE.model.Member;

@Service
public class MemberService {
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(MemberService.class);
	
	@Autowired
	private MemberMapper memberMapper;

	public int getSelectArticleList(Member member) {
		return this.memberMapper.LoginChecker(member);
	}
	
	
}
