package com.WorldCup.dao;

import java.util.List;

import com.WorldCup.pojo.Team;

public interface TeamMapper {
	
	     //发布球队信息
		 void insert(Team team);
		 //查询全部球队信息
		 List<Team> queryAllTeamInfo();
		 //根据id删除球队信息
		 void deleteTeamInfoById(Integer tId);
		 //根据id查询球队信息
		 Team queryTeamInfoById(Integer tId);
	     //根据id修改球队信息
	     void updateTeamInfoById(Team team);;
}