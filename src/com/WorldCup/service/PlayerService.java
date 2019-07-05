package com.WorldCup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.WorldCup.dao.PlayerMapper;
import com.WorldCup.pojo.Player;


@Service
@Transactional(rollbackFor=Exception.class)
public class PlayerService {
	@Autowired
	PlayerMapper playerMapper;
	
	public void insertPlayer(Player player){
		playerMapper.insert(player);
		
	}
	
	@Transactional(readOnly=true)
	public List<Player> queryAllPlayer(){
		return playerMapper.queryAllPlayer();
	}
	
	public void deletePlayerById(Integer pId){
		playerMapper.deletePlayerById(pId);
	}
	
	public  void updateLike(Integer pId){
		playerMapper.updateLike(pId);
	}
	
	@Transactional(readOnly=true)
	public Player queryPlayerById(Integer pId){
		return playerMapper.queryPlayerById(pId);
	}
	
	public void updatePlayerById(Player player){
		playerMapper.updatePlayerById(player);
	}
}