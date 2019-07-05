package com.WorldCup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.WorldCup.dao.GameMapper;
import com.WorldCup.pojo.Game;


@Service
@Transactional(rollbackFor=Exception.class)


public class GameService {
	@Autowired
	GameMapper gameMapper;
	
	@Transactional(readOnly=true)
	public List<Game> queryAllGame(){
		return gameMapper.queryAllGame();
	}
	
	
	@Transactional(readOnly=true)
	public List<Game> queryFollowGame(){
		return gameMapper.queryFollowGame();
	}
	
	public void deleteGameById(Integer gId){
		gameMapper.deleteGameById(gId);
	}
	
	
	public void followGame(Integer gId){
		gameMapper.followGame(gId);
	}
	

	public void unFollowGame(Integer gId){
		gameMapper.unFollowGame(gId);
	}
	

	public void insertGame(Game game){
		gameMapper.insert(game);
		
	}
	
	
	@Transactional(readOnly=true)
	public Game queryGameById(Integer gId){
		return gameMapper.queryGameById(gId);
	}
	
	

	@Transactional(readOnly=true)
	public Game queryGameByName(Integer gName){
		return gameMapper.queryGameByName(gName);
	}
	
	
	
	
	
	
	public void updateGameById(Game game){
		gameMapper.updateGameById(game);
	}
	
	
	public void followGameById(Game game){
		gameMapper.followGameById(game);
		
	}
	
}
