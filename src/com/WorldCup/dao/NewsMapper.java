package com.WorldCup.dao;

import com.WorldCup.pojo.News;
import java.util.List;

public interface NewsMapper {
	//发布实时新闻
		 void insert(News news);
	//查询全部新闻
		 List<News> queryAllNews();
	//根据id删除新闻
		 void deleteNewsById(Integer nId);
	//根据id查询新闻
	     News queryNewsById(Integer nId);	
	     
	     void updateNewsById(News news);
	     
	     void updateNewsThumpById(Integer nId);
}