package com.WorldCup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.WorldCup.dao.TeamMapper;
import com.WorldCup.pojo.Team;


@Service
@Transactional(rollbackFor=Exception.class)
public class TeamService {
	@Autowired
	TeamMapper teamMapper;
	
	public void insertTeam(Team team){
		teamMapper.insert(team);
	}
	
	@Transactional(readOnly=true)
	public List<Team> queryAllTeamInfo(){
		return teamMapper.queryAllTeamInfo();
	}
	
	public void deleteTeamInfoById(Integer tId){
		teamMapper.deleteTeamInfoById(tId);
	}
	
	@Transactional(readOnly=true)
	public Team queryTeamInfoById(Integer tId){
		return teamMapper.queryTeamInfoById(tId);
	}
	
	public void updateTeamInfoById(Team team){
		teamMapper.updateTeamInfoById(team);
	}
}
