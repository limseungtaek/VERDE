package com.nautestech.VERDE.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nautestech.VERDE.model.Article;
import com.nautestech.VERDE.service.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleListController {
    @Autowired
    private ArticleService articleService;
    private List<Article> articleList;

    @RequestMapping(value = "/list")
    public ModelAndView list(@RequestParam(value = "communityId", required = true, defaultValue = "1") int communityId) {

        articleList = articleService.getSelectArticleList(communityId);
        ModelAndView mv = new ModelAndView();

        mv.setViewName("article/ArticleList");
        mv.addObject("articleList", articleList);
        mv.addObject("communityId", communityId);

        return mv;
    }
}
