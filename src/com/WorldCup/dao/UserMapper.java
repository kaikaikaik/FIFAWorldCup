package com.WorldCup.dao;

import java.util.List;

import com.WorldCup.pojo.User;

public interface UserMapper {
	//增加一个用户
    int insert(User record);
    //登陆
    User userLogin(User user);
    //查询全部
    List<User> queryAllUser();
    
    //根據Id删除用户信息
    void deleteUserById(Integer uId);
    
    //根据Id查询数据
    User queryUserById(Integer uId);
    
    //根据Id编号修改
    void updateUserById(User user);
}