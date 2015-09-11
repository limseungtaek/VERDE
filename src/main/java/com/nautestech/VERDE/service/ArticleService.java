package com.nautestech.VERDE.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nautestech.VERDE.mapper.ArticleMapper;
import com.nautestech.VERDE.model.Article;

@Service
public class ArticleService {
	
	private static final Logger logger = LoggerFactory.getLogger(ArticleService.class);
	
	@Autowired
	private ArticleMapper articleMapper;

	public List<Article> getSelectArticleList(int communityId) {
		logger.info("getSelectArticleList?communityId="+communityId);
		return this.articleMapper.selectArticleList(communityId);
	}
	
	
}
