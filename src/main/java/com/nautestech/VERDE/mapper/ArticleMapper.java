package com.nautestech.VERDE.mapper;

import java.util.List;


//import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
//import org.apache.ibatis.annotations.Select;


import com.nautestech.VERDE.model.Article;

public interface ArticleMapper {
	
	public List<Article> selectArticleList(@Param("communityId") int communityId);
	public void InsertArticle(Article article);
	public void DeleteArticle(int articleId);
	public Article SelectArticleInfo(int articleId);
	
}