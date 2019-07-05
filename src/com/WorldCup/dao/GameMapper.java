package com.WorldCup.dao;


import java.util.List;

import com.WorldCup.pojo.Game;



public interface GameMapper {
	//查询所有球队信息
	List<Game> queryAllGame();
	
	//删除队伍
	 void deleteGameById(Integer gId);
	 
	 void followGame(Integer gId);
	 
	 void unFollowGame(Integer gId);
	 
	 List<Game> queryFollowGame();
	 
	 //添加队伍
	 int insert(Game record);
	 
	  //根据Id查询数据
	 Game queryGameById(Integer gId);
	    
	//根据Id编号修改
	void updateGameById(Game game);
	
	//根据Name查询数据
	 Game queryGameByName(Integer gName);
	//添加关注的球队
	int followGameById(Game record);
	 
}