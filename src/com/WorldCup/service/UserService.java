package com.WorldCup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.WorldCup.dao.UserMapper;
import com.WorldCup.pojo.User;


@Service
@Transactional(rollbackFor=Exception.class)
public class UserService {
	
	@Autowired
	UserMapper userMapper;
	
	
	public void insertUser(User user){
		userMapper.insert(user);
	}
	
	@Transactional(readOnly=true)
	public User userLogin(User user){
		return userMapper.userLogin(user);
	}
	
	@Transactional(readOnly=true)
	public List<User> queryAllUser(){
		return userMapper.queryAllUser();
	}
	
	public void deleteUserById(Integer uId){
		userMapper.deleteUserById(uId);
	}
	
	@Transactional(readOnly=true)
	public User queryUserById(Integer uId){
		return userMapper.queryUserById(uId);
	}
	
	public void updateUserById(User user){
		userMapper.updateUserById(user);
	}
}
