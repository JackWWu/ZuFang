package com.kgc.zufang.service.impl;

import com.kgc.zufang.beans.User;
import com.kgc.zufang.mapper.UserMapper;
import com.kgc.zufang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public boolean register(User user) {
        int row = userMapper.register(user);
        if (row > 0) {
            return true;
        }
        return false;
    }

    //将用户名密码带入数据库 查询有没有这个用户
    @Override
    public User getPwdAndName(String userPhone, String userPassword) {
        return userMapper.queryPwdAndName(userPhone,userPassword);
    }



}
