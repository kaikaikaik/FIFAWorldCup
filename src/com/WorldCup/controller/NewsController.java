package com.WorldCup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.WorldCup.pojo.News;
import com.WorldCup.service.NewsService;

@Controller

public class NewsController {
	@Autowired
	NewsService newsService;

	@RequestMapping("insertNews")
	public String insertNews(News news) {
		newsService.insertNews(news);
		return "queryAllNews";
	}
	
	@ResponseBody
	@RequestMapping("queryAllNews")
	public List<News> queryAllNews(){
		
		return newsService.queryAllNews();
	}
	
	@ResponseBody
	@RequestMapping("deleteNewsById")
	public String deleteNewsById(Integer nId){
		newsService.deleteNewsById(nId);
		return "yes";
	}
	
	@ResponseBody
	@RequestMapping("queryNewsById")
	public News queryInfoById(Integer nId){
		
		return newsService.queryNewsById(nId);
	}
	

	@RequestMapping("updateNewsById")
	public String updateNewsById(News news){
		newsService.updateNewsById(news);
		return "queryAllNews";
	}
	
	@ResponseBody
	@RequestMapping("updateNewsThumpById")
	public String updateNewsThumpById(Integer nId){
		
		newsService.updateNewsThumpById(nId);
		return "yes";
	}

}
