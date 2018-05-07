package com.heaven.biz;

import java.util.List;

import com.heaven.dao.ArticleDao;
import com.heaven.vo.Article;

public class ArticleBiz {
	ArticleDao ad = new ArticleDao();
	public int add(String lanmuxuanze, String title, String author, String content, String l, int count,
			String pic) {
		return ad.add(lanmuxuanze, title, author, content, l, count, pic);
	}
	
	public List<Article> getArticleByBelong(int belong) {
		return ad.getArticleByBelong(belong);
	}
	
	public Article getArticleById(int id) {
		return ad.getArticleById(id);
	}

	public int update(String lanmuxuanze, String title, String author, String editor, String outtime1, String img,int id) {
		
		return ad.update(lanmuxuanze, title, author, editor, outtime1, img,id);
	}
	
	public List<Article> getArticleByBelongLimit(int belong,int page) {
		return ad.getArticleByBelongLimit(belong, page);
	}
	
	public int readCount(int id){
		return ad.readCount(id);
	}
}
