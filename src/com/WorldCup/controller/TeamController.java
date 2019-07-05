package com.WorldCup.controller;

import java.util.List;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.WorldCup.pojo.Team;
import com.WorldCup.service.TeamService;

@Controller
public class TeamController {
	
	@Autowired
	TeamService teamService;
	
	@RequestMapping("insertTeam")
	public String insertTeam(Team team){
		teamService.insertTeam(team);
		return "teamInfo";
	}
	
	@ResponseBody
	@RequestMapping("queryAllTeamInfo1")
	public List<Team> queryAllTeamInfo1(){
		List<Team> list = teamService.queryAllTeamInfo();
		return list;
	}
	
	@ResponseBody
	@RequestMapping("queryAllTeamInfo")
	public ModelAndView queryAllTeamInfo(){
		List<Team> list = teamService.queryAllTeamInfo();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("teamInfos");
		return mv;
	}

	@ResponseBody
	@RequestMapping("deleteTeamInfoById")
	public String deleteTeamInfoById(Integer tId){
		teamService.deleteTeamInfoById(tId);
		return "yes";
	}
	
	@RequestMapping("queryTeamInfoById1")
	public ModelAndView queryTeamInfoById1(Integer tId){
		Team team = teamService.queryTeamInfoById(tId);
		ModelAndView mv = new ModelAndView();
		//传递数据
		mv.addObject("team",team);
		//转发的界面
		mv.setViewName("updateTeamInfo");
		return mv;
	}
		
	@RequestMapping("queryTeamInfoById")
	public ModelAndView queryTeamInfoById(Integer tId){
		Team team = teamService.queryTeamInfoById(tId);
		ModelAndView mv = new ModelAndView();
		//传递数据
		mv.addObject("team",team);
		//转发的界面
		mv.setViewName("detai");
		return mv;
	}
	
	
	@RequestMapping("updateTeamInfoById")
	public String updateTeamInfoById(Team team){
		teamService.updateTeamInfoById(team);
		return "teamInfo";
	}
}
