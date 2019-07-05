package com.WorldCup.dao;

import java.util.List;

import com.WorldCup.pojo.Player;


public interface PlayerMapper {
	//注册一个用户
    int insert(Player record);
	
	//查询球员信息
	List<Player> queryAllPlayer();
	
	//根据Id删除球星信息
    void deletePlayerById(Integer pId);
    
    //点赞
    void updateLike(Integer pId);
    
    //根据Id查询数据
    Player queryPlayerById(Integer pId);
    
  //根据Id编号修改
    void updatePlayerById(Player player);
}