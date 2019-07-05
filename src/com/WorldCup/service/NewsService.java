package com.WorldCup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.WorldCup.dao.NewsMapper;
import com.WorldCup.pojo.News;


@Service 
@Transactional(rollbackFor=Exception.class)
public class NewsService {
	@Autowired
	NewsMapper newsMapper;
	
	public void insertNews(News news){
		newsMapper.insert(news);
	}
	
	@Transactional(readOnly=true)
	public List<News> queryAllNews(){
		return newsMapper.queryAllNews();
	}
	
	public void deleteNewsById(Integer nId){
		newsMapper.deleteNewsById(nId);
	}
	
	public News queryNewsById(Integer nId){
		return newsMapper.queryNewsById(nId);
	}
	
	public void updateNewsById(News news) {
		newsMapper.updateNewsById(news);
	}
	
	public void updateNewsThumpById(Integer nId) {
		newsMapper.updateNewsThumpById(nId);
	}
}
