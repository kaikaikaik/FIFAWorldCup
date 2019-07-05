package com.WorldCup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.WorldCup.pojo.Player;
import com.WorldCup.service.PlayerService;


@Controller
public class PlayerController {
	@Autowired
	PlayerService playerService;
	
	@RequestMapping("insertPlayer")
	public String insertPlayer(Player player){
		playerService.insertPlayer(player);
		return "queryAllPlayer";
	}
	
	//查询所有球员信息
	@ResponseBody
	@RequestMapping("queryAllPlayer")
	public List<Player> queryAllPlayer(){
		System.out.println("123");
		List<Player> list=playerService.queryAllPlayer();
		return list;
	}
	
	//根据ID删除球星信息
	@ResponseBody
	@RequestMapping("deletePlayerById")
	public String deletePlayerById(Integer pId){
		playerService.deletePlayerById(pId);
		return "yes";//数据值yes
	}
	
	//点赞
	@RequestMapping("updateLike")
	public ModelAndView updateLike(Integer pId){
		playerService.updateLike(pId);
		Player player = playerService.queryPlayerById(pId);
		System.out.println(pId+"ssssssssss");
		//传递数据
		ModelAndView mv=new ModelAndView();
		mv.setViewName("player");
		mv.addObject("player", player);
		
		return mv;
	}
	
	@RequestMapping("queryPlayerById")
	public ModelAndView queryPlayerById(Integer pId){
		Player player = playerService.queryPlayerById(pId);
		ModelAndView mv = new ModelAndView();
		//传递数据
		mv.addObject("player",player);
		//转发的界面
		mv.setViewName("updataPlayer");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("queryPlayerById2")
	public ModelAndView queryPlayerById2(Integer pId){
		System.out.println("*********"+pId);
		Player player = playerService.queryPlayerById(pId);
		ModelAndView mv = new ModelAndView();
		//传递数据
		mv.addObject("player",player);
		//转发的界面
		mv.setViewName("player");
		return mv;
	}
	
	@RequestMapping("updatePlayerById")
	public String updatePlayerById(Player player){
		playerService.updatePlayerById(player);
		return "queryAllPlayer";//跳转界面到queryAllPlayer.jsp
	}
}